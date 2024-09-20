(set-option :print-success false)
(set-option :produce-proofs false)
(set-option :interpolant-check-mode true)
(set-option :verbosity 3)
(set-logic UF)
(set-info :source |First push block from orr/sll-find.imp.smt2|)
(set-info :smt-lib-version 2.0)
(set-info :category "crafted")
(set-info :status unsat)
(declare-sort V 0)
(declare-fun n* (V V) Bool)
(declare-fun i () V)
(declare-fun h () V)
(declare-fun j () V)
(declare-fun m () V)
(declare-fun C (V) Bool)
(declare-fun t () V)
(declare-fun null () V)

(declare-fun EQ (V V) Bool)
(assert (forall ((x V)) (EQ x x)))
(assert (forall ((x V) (y V)) (=> (EQ x y) (EQ y x))))
(assert (forall ((x V) (y V) (z V)) (=> (and (EQ x y) (EQ y z)) (EQ x z))))
(assert (forall ((x0 V) (y0 V)) (=> (EQ x0 y0) (=> (C x0) (C y0)))))
(assert (forall ((x0 V) (y0 V) (x1 V) (y1 V)) (=> (and (EQ x0 y0) (EQ x1 y1)) (=> (n* x0 x1) (n* y0 y1)))))

(assert (forall ((u$1$1 V)) (n* u$1$1 u$1$1)))
(assert (forall ((u$2$1 V) (v$1$1 V) (w$1$1 V)) (=> (and (n* u$2$1 v$1$1) (n* v$1$1 w$1$1)) (n* u$2$1 w$1$1))))
(assert (forall ((u$3$1 V) (v$2$1 V) (w$2$1 V)) (=> (and (n* u$3$1 v$2$1) (n* u$3$1 w$2$1)) (or (n* v$2$1 w$2$1) (n* w$2$1 v$2$1)))))
(assert (forall ((u$4$1 V) (v$3$1 V)) (=> (n* u$4$1 v$3$1) (=> (n* v$3$1 u$4$1) (EQ u$4$1 v$3$1)))))
(assert (forall ((v$4$1 V)) (=> (or (n* null v$4$1) (n* v$4$1 null)) (EQ null v$4$1))))
(assert (not (C null)))

(assert (not (=> (and (=> (not (EQ i null)) (n* h i)) (forall ((m$1$1 V)) (=> (n* h m$1$1) (=> (not (n* i m$1$1)) (not (C m$1$1))))) (=> (not (EQ t null)) (C i))) (ite (and (not (EQ i null)) (EQ t null)) (ite (C i) (and (=> (not (EQ i null)) (n* h i)) (forall ((m$2$1 V)) (=> (n* h m$2$1) (=> (not (n* i m$2$1)) (not (C m$2$1))))) (=> (not (EQ i null)) (C i))) (and (not (EQ i null)) (forall ((z$1$1 V)) (=> (or (and (n* i z$1$1) (not (EQ i z$1$1)) (forall ((w$3$1 V)) (=> (and (n* i w$3$1) (not (EQ i w$3$1))) (n* z$1$1 w$3$1)))) (and (EQ z$1$1 null) (forall ((w$4$1 V)) (not (and (n* i w$4$1) (not (EQ i w$4$1))))))) (and (=> (not (EQ z$1$1 null)) (n* h z$1$1)) (forall ((m$3$1 V)) (=> (n* h m$3$1) (=> (not (n* z$1$1 m$3$1)) (not (C m$3$1))))) (=> (not (EQ t null)) (C z$1$1))))))) (ite (EQ i null) (not (exists ((m$4$1 V)) (and (n* h m$4$1) (C m$4$1)))) (and (C i) (n* h i) (not (exists ((m$5$1 V)) (and (n* h m$5$1) (n* m$5$1 i) (not (EQ m$5$1 i)) (C m$5$1))))))))))

(check-sat)
(exit)
