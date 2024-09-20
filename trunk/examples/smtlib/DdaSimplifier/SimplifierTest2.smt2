(set-logic QF_UFLIA)
(set-info :author pomrehn@informatik.uni-freiburg.de)
(set-info :category "crafted")
(set-info :status sat)
(set-info :simplyfied A)
(set-info :source "{ One disjunction is non-constraining and can be simlified to true. }")
(set-option :strong-context-simplifier true)
(declare-fun A () Bool)
(declare-fun B () Bool)
(simplify (and A (or A B)))
(exit)