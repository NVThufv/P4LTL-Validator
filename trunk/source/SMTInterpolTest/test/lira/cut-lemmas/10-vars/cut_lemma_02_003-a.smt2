(set-logic QF_UFLIRA)
(set-info :source |
Alberto Griggio

|)
(set-info :smt-lib-version 2.0)
(set-info :category "crafted")
(set-info :status unsat)
(declare-fun x0 () Real)
(declare-fun x1 () Real)
(declare-fun x2 () Int)
(declare-fun x4 () Real)
(declare-fun x5 () Int)
(declare-fun x6 () Real)
(declare-fun x7 () Real)
(declare-fun x8 () Int)
(declare-fun x9 () Int)
(assert (let ((?v_2 (- x0)) (?v_1 (- x7)) (?v_0 (* x2 2))) (and (not (>= (+ (* x5 (- 2)) (+ (+ (* x8 4) ?v_0) (* x9 2))) (- 2))) (and (and (and (and (and (and (and (and (<= (- 1) (+ (+ (+ x6 x9) ?v_0) x8)) (<= (+ (+ (+ (* x1 2) x0) x5) ?v_1) 0)) (<= (- x4 x9) (- 1))) (<= (+ (+ (- x8) (* x5 2)) ?v_1) 1)) (<= (- 1) (+ (+ (+ (- x6) x9) (* x8 2)) ?v_1))) (<= 0 (+ (+ (- x2) x1) ?v_1))) (<= (+ (+ (+ (+ ?v_2 x6) x5) x8) ?v_1) (- 1))) (<= 0 (+ (+ (+ (+ x9 x4) x6) ?v_2) x2))) (<= 1 (+ x8 x1))))))
(check-sat)
(exit)
