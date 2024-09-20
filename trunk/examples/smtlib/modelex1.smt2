(set-option :produce-models true)
(set-logic QF_UFLIA)
(declare-fun x () Int)
(declare-fun y () Int)
(assert (< x y))
(check-sat)
(get-value (x y))
(get-value ((> x y)))
(get-value ((+ x 3) (- y 5)))
(get-value ((+ x 3 (- y 5))))
(exit)

