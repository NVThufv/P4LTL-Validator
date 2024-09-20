(set-logic UFLIA)

(declare-sort SetOfInt 0)
(declare-fun element (Int SetOfInt) Bool)

(declare-fun x () Int)
(declare-fun I () SetOfInt)

; I does not contain all numbers. Result: sat 
(assert (exists ((x Int))  (not (element x I))))

(check-sat)
(get-value (I))