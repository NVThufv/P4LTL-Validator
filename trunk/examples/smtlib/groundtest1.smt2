(set-option :produce-proofs true)
(set-info :source "{
}")
(set-info :status unsat)
(set-info :difficulty "{ 0 }")
(set-logic AUFLIA)
(declare-fun P ( Int) Int)
(declare-fun Q ( Int Int) Int)
(declare-fun foo1 () Int)
(declare-fun foo2 () Int)
(declare-fun bar () Int)
(assert (! (forall ((x Int)) (! (= (= (P x) 0) (forall ((y Int)) (! (= (Q x y) 0) :pattern ((Q x y))))) :pattern ((P x)))) :named IP_0))
(assert (! (forall ((y Int)) (! (= (Q foo2 y) 0) :pattern ((Q foo2 y)))) :named IP_1))
(assert (! (or (not (= (P foo2) 0)) (and (= (P foo1) 0) (not (= (Q foo1 bar) 0)))) :named IP_2))
(check-sat)
(get-interpolants IP_0 IP_1 IP_2)
(exit)
