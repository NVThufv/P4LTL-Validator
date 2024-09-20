(set-option :produce-models true)
(set-logic QF_AUFLIA)

(declare-const a (Array Int Int))
(declare-const b (Array Int Int))

(assert (= (@diff a b) 2))
(assert (= (select a 2) (select b 2)))



(check-sat)
(get-model)

