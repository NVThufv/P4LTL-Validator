(set-option :produce-interpolants true)
(set-option :interpolant-check-mode true)
(set-logic QF_AUFLIA)
(declare-sort U 0)
(declare-const ar1 (Array Int Int))
(declare-const ar2 (Array Int Int))
(declare-const ar (Array Int Int))
(declare-const s Int)
(declare-const t U)
(declare-const t2 U)
(declare-const a Int)
(declare-const b Int)
(declare-const c Int)
(declare-const d Int)
(declare-fun f (U) Int)

(assert (! (and (= c d) (= ar1 (store ar2 (+ s (* 2 a)) 0))) :named A))
(assert (! (and (= c (+ s (* 2 b) 1)) (not (= (select ar1 (+ s (* 2 b) 1)) (select ar2 c)))) :named B))
(check-sat)
(get-proof)
(get-interpolants A B)
