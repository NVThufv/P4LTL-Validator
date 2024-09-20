(set-option :produce-proofs true)
(set-info :source "{
UNKNOWN - But this is a typical cut example
}")
(set-info :status unsat)
(set-info :difficulty "{ 0 }")
(set-logic QF_LIA)
(declare-fun x () Int)
(declare-fun y () Int)
(declare-fun z () Int)
(assert (! (= x (* 2 y)) :named IP_0))
(assert (! (= x (+ (* 2 z) 1)) :named IP_1))
(check-sat)
(get-interpolants IP_0 IP_1)
(exit)
