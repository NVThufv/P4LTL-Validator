(set-option :model-check-mode true)
(set-option :proof-check-mode true)
(set-logic QF_UF)
(declare-sort U 0)
(declare-const p Bool)
(declare-const q Bool)
(declare-fun bool (Bool) U)
(assert (not (=> (not p) (not q) (= (bool (or p q)) (bool false)))))
(check-sat)
(get-proof)
