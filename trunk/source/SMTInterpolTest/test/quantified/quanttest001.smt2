(set-option :print-success false)
(set-logic UFLIA)
(set-info :source |Simple Array Property Example (arrays as uninterpreted functions)|)
(set-info :smt-lib-version 2.0)
(set-info :category "crafted")
(set-info :status unsat)
(declare-fun l () Int)
(declare-fun u () Int)
(declare-fun a (Int) Int)
(assert (< l u))
(assert (forall ((x Int) (y Int)) (=> (and (<= l x) (<= x y) (<= y u)) (<= (a x) (a y)))))
(assert (> (a (+ l 1)) (a u)))
(check-sat)
(exit)
