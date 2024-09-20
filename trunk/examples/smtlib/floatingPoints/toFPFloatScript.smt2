(set-option :print-success true)
(set-logic QF_FP)
(declare-fun x () (_ FloatingPoint 5 11))
(declare-fun w () (_ FloatingPoint 5 11))
(declare-fun a () (_ FloatingPoint 5 11))
(declare-fun e () (_ FloatingPoint 5 11))
(declare-fun b () Float32)
(declare-fun y () (_ BitVec 16))
(declare-fun d () (_ BitVec 16))
(declare-fun z () Real)

(assert (= y #b0000000000000000))
(assert (fp.eq x ((_ to_fp 5 11) y)))
(assert (= z 2.0)
(assert (fp.eq w ((_ to_fp 5 11) RNE z)))
(assert (fp.eq x ((_ to_fp 5 11) RTZ y)))
(assert (fp.eq a ((_ to_fp 5 11) RTZ b)))
(assert (fp.eq e ((_ to_fp_unsigned 5 11) RTZ d)))


(declare-fun f () (_ FloatingPoint 5 11))
(declare-fun g () (_ FloatingPoint 5 11))
(declare-fun j () (_ FloatingPoint 5 11))
(declare-fun h () (_ BitVec 16))
(declare-fun i () (_ BitVec 16))
(declare-fun k () Real)

(assert (= h ((_ fp.to_ubv 16) RTZ f)))
(assert (= i ((_ fp.to_sbv 16) RTZ g)))
(assert (= k (fp.to_real j)))
