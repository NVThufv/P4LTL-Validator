---

typora-copy-images-to: ..\images
---

- “z3插值模式”的preference推测应该是设置不了了，因为4.7.1后的版本都删除了对于插值模式的支持，然而尝试了4.7.1的z3也不能够运行，推测可能是现在的UA使用了新Z3的一些特性

- 可以考虑将boogieprinter仅调用boogie相关的验证（`BoogieLTL.xml`）来check插桩的正确性，避免插桩可能的bug导致复杂化

  - `p4example_boogie_bug1.bpl`

  - 测试：`#LTLProperty: [](AP(isValid[hdr.ipv4] == true))`，使用`BoogieLTL.xml`验证报错：`Arrays with Bool as argument are not supported`

    - 考虑使用普通变量代替，但是不看好，因为P4LTL也是这样做的

      - 仍然失败，报同样的错

    - 将`isValid`替换为`[Ref]int`，赋值与否使用01代替

      - 还是失败，报同样的错，是否是因为文件中还存在`emit [Ref]bool`的缘故？

      - 尝试修改`emit`为`[Ref] int`

        - 不报`Arrays with Bool as argument are not supported`这个错了，**看来boogie文件不能够出现`[Ref] bool`类型**

        - 但是报了新错误：`function symbols not yet supported`

          - 修改代码，尝试打印具体到底是什么symbol：`function symbols not yet supported: (add.bv8 (_ BitVec 8) (_ BitVec 8) (_ BitVec 8))`

            - 好消息是前缀应该是支持function symbol的，坏消息是这部分不支持的应该是秩函数综合的部分（从trace back中推测——`checkLassoTermination`这个函数需要在check stem和loop的feasiblity之后才调用，并且就是最后调用的了——前面所有的前缀check的部分都支持function symbol）：

            ```
            	at de.uni_freiburg.informatik.ultimate.lassoranker.variables.LassoPartitioneer.addInOuAuxVar(LassoPartitioneer.java:238)
            	at de.uni_freiburg.informatik.ultimate.lassoranker.variables.LassoPartitioneer.constructTransFormulaLR(LassoPartitioneer.java:210)
            	at de.uni_freiburg.informatik.ultimate.lassoranker.variables.LassoPartitioneer.doPartition(LassoPartitioneer.java:166)
            	at de.uni_freiburg.informatik.ultimate.lassoranker.variables.LassoPartitioneer.<init>(LassoPartitioneer.java:95)
            	at de.uni_freiburg.informatik.ultimate.lassoranker.preprocessors.LassoPartitioneerPreprocessor.process(LassoPartitioneerPreprocessor.java:65)
            	at de.uni_freiburg.informatik.ultimate.lassoranker.variables.LassoBuilder.applyPreprocessor(LassoBuilder.java:154)
            	at de.uni_freiburg.informatik.ultimate.lassoranker.variables.LassoBuilder.preprocess(LassoBuilder.java:262)
            	at de.uni_freiburg.informatik.ultimate.lassoranker.LassoAnalysis.preprocess(LassoAnalysis.java:280)
            	at de.uni_freiburg.informatik.ultimate.lassoranker.LassoAnalysis.<init>(LassoAnalysis.java:229)
            	at de.uni_freiburg.informatik.ultimate.plugins.generator.buchiautomizer.LassoCheck.synthesize(LassoCheck.java:601)
            	at de.uni_freiburg.informatik.ultimate.plugins.generator.buchiautomizer.LassoCheck$LassoCheckResult.checkLassoTermination(LassoCheck.java:914)
            	at de.uni_freiburg.informatik.ultimate.plugins.generator.buchiautomizer.LassoCheck$LassoCheckResult.<init>(LassoCheck.java:823)
            	at de.uni_freiburg.informatik.ultimate.plugins.generator.buchiautomizer.LassoCheck.<init>(LassoCheck.java:247)
            	at de.uni_freiburg.informatik.ultimate.plugins.generator.buchiautomizer.cegar.AbstractBuchiCegarLoop.runCegarLoop(AbstractBuchiCegarLoop.java:310)
            ```

          - 想要解决这部分，可能必须要像smartpulse一样改动综合部分的代码？——调研相关代码

            - Smartpulse：增加了红框部分的代码，但是**后续的不变**，isinductive应该是如论文所言的使用领域知识判断是否终止的算法，考虑到smartpulse也使用了诸如`function {:bvbuiltin "mod"} modBpl(x: int, y: int) returns (ret: int);`的function，初步考虑可能是不支持bit操作？
              - ![image-20220717173318093](../images/image-20220717173318093.png)
              - ![image-20220717171650020](../images/image-20220717171650020.png)
            - 否，调研smartpulse版本的UA，发现也不支持function symbol：`trunk\source\Library-LassoRanker\src\de\uni_freiburg\informatik\ultimate\lassoranker\variables\LassoPartitioneer.java`: ![image-20220717172744471](../images/image-20220717172744471.png)
              - 因此初步判断Smartpulse并没有解决这个问题，若新加的启发式没有过（顺延到原有的处理方案），则也会这样报错
                - 但这个判断存在漏洞：虽然有些function未使用，但是smartpulse的这部分function被使用：![image-20220717173431207](../images/image-20220717173431207.png)
                  - 是否是function属性的原因？
                    - 尝试删除`add.bv`的`{:bvbuiltin}`属性
                      - 失败，仍然报相同错误：`java.lang.UnsupportedOperationException: function symbols not yet supported: (add.bv8 (_ BitVec 8) (_ BitVec 8) (_ BitVec 8)) Type: class de.uni_freiburg.informatik.ultimate.lib.smtlibutils.NonTheorySymbol$Function`
                  - 但是ranking function似乎仅check loop？上面这些function都只是在初始化时候用到，不参与循环，应该是这个原因，所以smartpulse没有遇到报错，也不需要解决这个问题
                    - 因此需要解决UA的ranking function综合不支持function symbol的方法
                      - brute方案：放弃综合，不断unroll使用判断前缀可行的方案来进行check，原UA仅Unroll一次![image-20220717181531698](../images/image-20220717181531698.png)
                      - 方案2：仿照Smartpulse的启发式 + brute方案尽可能地unroll check，否则返回unknown

- `p4example_boogie_bug2.bpl`

  - 在`checkLoopFeasibility`中报错：`de.uni_freiburg.informatik.ultimate.logic.SMTLIBException: External (MP ..\adds\mathsat.exe -unsat_core_generation=3 (10) with exit command (exit)) Received EOF on stdin`

    - 可能是solver的问题？
    - ![image-20220719102033852](../images/image-20220719102033852.png)
      - 从中得到solver的选取可能和精化的策略有关，尝试改变精化策略
      - 成功解决这个bug！WALRUS策略的Mathsat不彳亍！WARTHOG使用的CVC4彳亍！
        - ![image-20220719102253337](../images/image-20220719102253337.png)

  - ```
    de.uni_freiburg.informatik.ultimate.logic.SMTLIBException: External (MP ..\adds\mathsat.exe -unsat_core_generation=3 (10) with exit command (exit)) Received EOF on stdin. No stderr output.
    	at de.uni_freiburg.informatik.ultimate.smtsolver.external.Executor.parse(Executor.java:243)
    	at de.uni_freiburg.informatik.ultimate.smtsolver.external.Executor.parseSuccess(Executor.java:258)
    	at de.uni_freiburg.informatik.ultimate.smtsolver.external.Executor.createProcess(Executor.java:144)
    	at de.uni_freiburg.informatik.ultimate.smtsolver.external.Executor.<init>(Executor.java:110)
    	at de.uni_freiburg.informatik.ultimate.smtsolver.external.Scriptor.<init>(Scriptor.java:74)
    ```

  - 但是其实还是遇到了相同的function symbol bug导致不能够运行：![image-20220719102349790](../images/image-20220719102349790.png)

- error3: `HoareTripleChecker results differ between IncrementalHoareTripleChecker`

  - ```
    java.lang.AssertionError: HoareTripleChecker results differ between IncrementalHoareTripleChecker (result: VALID) and MonolithicHoareTripleChecker (result: INVALID)
    	at de.uni_freiburg.informatik.ultimate.lib.modelcheckerutils.hoaretriple.ChainingHoareTripleChecker$ReviewedProtectedHtc.createAssertionError(ChainingHoareTripleChecker.java:386)
    	at de.uni_freiburg.informatik.ultimate.lib.modelcheckerutils.hoaretriple.ChainingHoareTripleChecker$ReviewedProtectedHtc.reviewInductiveReturn(ChainingHoareTripleChecker.java:365)
    	at de.uni_freiburg.informatik.ultimate.lib.modelcheckerutils.hoaretriple.ChainingHoareTripleChecker$ReviewedProtectedHtc.checkReturn(ChainingHoareTripleChecker.java:330)
    
    ```

  - 这个目前似乎没能够再次复现

- error2：`External (MP ..\adds\mathsat.exe -unsat_core_generation=3 (10) with exit command (exit)) Received EOF on stdin`——原因基本check

  - 在`p4example_bug.bpl`等中出现

- error1: `Arrays with Bool as argument are not supported`——原因基本check

  - ```
    [2022-07-16 22:43:12,616 FATAL L?                        ?]: An unrecoverable error occured during an interaction with an SMT solver:
    de.uni_freiburg.informatik.ultimate.logic.SMTLIBException: Arrays with Bool as argument are not supported
    	at de.uni_freiburg.informatik.ultimate.smtsolver.external.Parser$Action$.CUP$do_action(Parser.java:1458)
    	at de.uni_freiburg.informatik.ultimate.smtsolver.external.Parser.do_action(Parser.java:658)

  - 在`p4example_bug2.bpl`等中出现

---

## Synthesis

- 复现bug相关——因为finialstate代码的改动、为了修复其他bug的preference的改动、尝试修复bug的改动，上面的note当作log看就好，现在check存在bug的文件只需要看如下的归档
- 现在绝大部分的bug都出现在了ranking function的综合当中，其中有
  - `Arrays with Bool as argument are not supported`
    - 将Boogie文件中所有的`[Ref] bool`删去能够继续运行
    - 仍存在bug存疑，解决了solver问题后不能够复现
  - `Quantifiers are not supported`：![image-20220719104614177](../images/image-20220719104614177.png)
    - 将Boogie文件中所有的`forall`注释掉能够继续运行
  - `Unknown sort in equality @term: (= |v_old(hdr.ethernet.dstAddr)_12| v_hdr.ethernet.dstAddr_43)`
    - 诡异，出现这个bug仅check了`//#LTLProperty: [](valid_before(hdr.ipv4))`，并未添加fairness和old相关
    - `p4example_bug2.bpl`能够复现
    - `var hdr.ethernet.dstAddr:bv48`——推测是不支持bv？
  - `function symbols not yet supported: (add.bv8 (_ BitVec 8) (_ BitVec 8) (_ BitVec 8))`
    - 这个推测需要mark掉boogie中所有的function才能够运行
      - 其实只需要mark loop中的function即可
    - `p4example_boogie_bug2.bpl`和`p4example_boogie_bug1.bpl`都能够复现这个bug
    - 性质中未出现old，应该是本身的验证导致的，推测是因为bv的原因？
      - 将dstAddr替换为int，尝试验证——上述错误解决，但是出现新错误：`Unknown sort in equality @term: (= |v_old(hdr.ipv4.flags)_9| v_hdr.ipv4.flags_29)`
        - `var hdr.ipv4.flags:bv3`——综上推测应该是ranking function的综合不支持bv的推理
          - 将所有bv类型改动为int能够正常地进行验证佐证了这一点
- 使用`LTLAutomizerBpl_bitvec_debug.epf`来检测，原epf check因为使用Mathsat存在其他bug
- 综上，因为ranking function的综合和P4Boogie存在许多的不兼容，尝试的解决方案：
  - brute force方案：放弃综合，不断unroll使用判断前缀可行的方案来进行check，原UA仅Unroll一次![image-20220717181531698](../images/image-20220717181531698.png)
  - 方案2：仿照Smartpulse先采用启发式 + 再采用brute force方案尽可能地unroll check，
    - ![image-20220720194729627](../images/image-20220720194729627.png)
    - 但是启发式需要保证正确性，不过似乎可能可以复用Smartpulse的部分源码？
      - Smartpulse的启发式是否可以用于P4？
    - 因为rankingfunction的综合也是不完备的，若启发式 + unroll能够解决的问题足够多，那么这样甚至能够在解决问题的同时提升性能
  - 方案3：改动UA源码的ranking synthesis部分
    - 姑且算一种可能，但是需要的effort推测是unaffordable的，因为需要保证正确性
  - 方案4：改动P4Boogie，兼容ranking synthesis部分：
    - 不能够含有`[Ref] bool`：`Arrays with Bool as argument are not supported`
      - 存疑
    - 不能够含有量词：`Quantifiers are not supported`
    - 不能够含有函数：`function symbols not yet supported: (add.bv8 (_ BitVec 8) (_ BitVec 8) (_ BitVec 8))`
      - 似乎仅需要loop不含有函数即可？（存疑）
    - 不支持bv的推理：`Unknown sort in equality @term: (= |v_old(hdr.ethernet.dstAddr)_12| v_hdr.ethernet.dstAddr_43)`
      - 可选改动
        - 替换P4Boogie的bv——这个应该是unamendable的
        - UA代码的bv验证
          - 如果不涉及核心验证（比如只是增加一个bvtype的简单处理就可以支持）那么可以考虑改动
    - 可能存在的问题：改动需要保证P4和P4Boogie的等价性——比如若将bv类型改动为int类型，那么诸如上下溢、移位等操作需要仔细地模拟
- 另：遇到ranking funtion不能够直接返回unknown：![image-20220719114102905](../images/image-20220719114102905.png)
  - 尝试注释运行，结果unable to decide会导致check终止：![image-20220719114150971](../images/image-20220719114150971.png)

