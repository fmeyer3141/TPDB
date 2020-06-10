(declare-sort Loc 0)
(declare-const l0 Loc)
(declare-const l1 Loc)
(declare-const l2 Loc)
(declare-const l3 Loc)
(declare-const l4 Loc)
(declare-const l6 Loc)
(declare-const l7 Loc)
(declare-const l5 Loc)
(declare-const l9 Loc)
(declare-const l10 Loc)
(declare-const l8 Loc)
(declare-const l11 Loc)
(assert (distinct l0 l1 l2 l3 l4 l6 l7 l5 l9 l10 l8 l11))

(define-fun cfg_init ( (pc Loc) (src Loc) (rel Bool) ) Bool
  (and (= pc src) rel))

(define-fun cfg_trans2 ( (pc Loc) (src Loc)
                         (pc1 Loc) (dst Loc)
                         (rel Bool) ) Bool
  (and (= pc src) (= pc1 dst) rel))

(define-fun cfg_trans3 ( (pc Loc) (exit Loc)
                         (pc1 Loc) (call Loc)
                         (pc2 Loc) (return Loc)
                         (rel Bool) ) Bool
  (and (= pc exit) (= pc1 call) (= pc2 return) rel))

(define-fun init_main ( (pc^0 Loc) (Result_4^0 Int) (__cil_tmp6_15^0 Int) (__disjvr_0^0 Int) (__disjvr_1^0 Int) (a_140^0 Int) (a_16^0 Int) (head_12^0 Int) (i_11^0 Int) (len_47^0 Int) (length_10^0 Int) (length_19^0 Int) (lt_21^0 Int) (t_17^0 Int) (tmp_13^0 Int) (tmp_20^0 Int) (tmp___0_14^0 Int) (x_18^0 Int) ) Bool
  (cfg_init pc^0 l11 true))

(define-fun next_main (
                 (pc^0 Loc) (Result_4^0 Int) (__cil_tmp6_15^0 Int) (__disjvr_0^0 Int) (__disjvr_1^0 Int) (a_140^0 Int) (a_16^0 Int) (head_12^0 Int) (i_11^0 Int) (len_47^0 Int) (length_10^0 Int) (length_19^0 Int) (lt_21^0 Int) (t_17^0 Int) (tmp_13^0 Int) (tmp_20^0 Int) (tmp___0_14^0 Int) (x_18^0 Int)
                 (pc^post Loc) (Result_4^post Int) (__cil_tmp6_15^post Int) (__disjvr_0^post Int) (__disjvr_1^post Int) (a_140^post Int) (a_16^post Int) (head_12^post Int) (i_11^post Int) (len_47^post Int) (length_10^post Int) (length_19^post Int) (lt_21^post Int) (t_17^post Int) (tmp_13^post Int) (tmp_20^post Int) (tmp___0_14^post Int) (x_18^post Int)
             ) Bool
  (or
    (cfg_trans2 pc^0 l0 pc^post l1 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= length_19^post length_19^post) (= head_12^post 0)) (= i_11^post 0)) (= Result_4^0 Result_4^post)) (= __cil_tmp6_15^0 __cil_tmp6_15^post)) (= __disjvr_0^0 __disjvr_0^post)) (= __disjvr_1^0 __disjvr_1^post)) (= a_140^0 a_140^post)) (= a_16^0 a_16^post)) (= len_47^0 len_47^post)) (= length_10^0 length_10^post)) (= lt_21^0 lt_21^post)) (= t_17^0 t_17^post)) (= tmp_13^0 tmp_13^post)) (= tmp_20^0 tmp_20^post)) (= tmp___0_14^0 tmp___0_14^post)) (= x_18^0 x_18^post)))
    (cfg_trans2 pc^0 l1 pc^post l2 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= 0 (+ (+ -2 (* -1 i_11^0)) length_10^0)) (= tmp___0_14^post tmp___0_14^post)) (= tmp_13^post (+ 0 tmp___0_14^post))) (= head_12^post (+ 0 tmp_13^post))) (= i_11^post (+ 1 i_11^0))) (= Result_4^0 Result_4^post)) (= __cil_tmp6_15^0 __cil_tmp6_15^post)) (= __disjvr_0^0 __disjvr_0^post)) (= __disjvr_1^0 __disjvr_1^post)) (= a_140^0 a_140^post)) (= a_16^0 a_16^post)) (= len_47^0 len_47^post)) (= length_10^0 length_10^post)) (= length_19^0 length_19^post)) (= lt_21^0 lt_21^post)) (= t_17^0 t_17^post)) (= tmp_20^0 tmp_20^post)) (= x_18^0 x_18^post)))
    (cfg_trans2 pc^0 l1 pc^post l3 (exists ( (Result_4^1 Int) (Result_4^2 Int) (Result_4^3 Int) ) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ (+ -1 (* -1 i_11^0)) length_10^0) 0) (= __cil_tmp6_15^post (+ 0 head_12^0))) (= Result_4^1 (+ 0 __cil_tmp6_15^post))) (= tmp_20^post (+ 0 Result_4^1))) (= Result_4^2 Result_4^2)) (= x_18^post (+ 0 a_16^0))) (<= (+ 0 x_18^post) 0)) (<= 0 (+ 0 x_18^post))) (= Result_4^3 Result_4^3)) (= Result_4^post Result_4^post)) (= __disjvr_0^0 __disjvr_0^post)) (= __disjvr_1^0 __disjvr_1^post)) (= a_140^0 a_140^post)) (= a_16^0 a_16^post)) (= head_12^0 head_12^post)) (= i_11^0 i_11^post)) (= len_47^0 len_47^post)) (= length_10^0 length_10^post)) (= length_19^0 length_19^post)) (= lt_21^0 lt_21^post)) (= t_17^0 t_17^post)) (= tmp_13^0 tmp_13^post)) (= tmp___0_14^0 tmp___0_14^post))))
    (cfg_trans2 pc^0 l2 pc^post l4 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= 0 (+ 0 len_47^0)) (<= 0 (+ (+ -2 (* -1 i_11^0)) length_10^0))) (= tmp___0_14^post tmp___0_14^post)) (= tmp_13^post (+ 0 tmp___0_14^post))) (= head_12^post (+ 0 tmp_13^post))) (= i_11^post (+ 1 i_11^0))) (= Result_4^0 Result_4^post)) (= __cil_tmp6_15^0 __cil_tmp6_15^post)) (= __disjvr_0^0 __disjvr_0^post)) (= __disjvr_1^0 __disjvr_1^post)) (= a_140^0 a_140^post)) (= a_16^0 a_16^post)) (= len_47^0 len_47^post)) (= length_10^0 length_10^post)) (= length_19^0 length_19^post)) (= lt_21^0 lt_21^post)) (= t_17^0 t_17^post)) (= tmp_20^0 tmp_20^post)) (= x_18^0 x_18^post)))
    (cfg_trans2 pc^0 l4 pc^post l2 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= Result_4^0 Result_4^post) (= __cil_tmp6_15^0 __cil_tmp6_15^post)) (= __disjvr_0^0 __disjvr_0^post)) (= __disjvr_1^0 __disjvr_1^post)) (= a_140^0 a_140^post)) (= a_16^0 a_16^post)) (= head_12^0 head_12^post)) (= i_11^0 i_11^post)) (= len_47^0 len_47^post)) (= length_10^0 length_10^post)) (= length_19^0 length_19^post)) (= lt_21^0 lt_21^post)) (= t_17^0 t_17^post)) (= tmp_13^0 tmp_13^post)) (= tmp_20^0 tmp_20^post)) (= tmp___0_14^0 tmp___0_14^post)) (= x_18^0 x_18^post)))
    (cfg_trans2 pc^0 l2 pc^post l6 (exists ( (Result_4^1 Int) ) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= 0 (+ 0 len_47^0)) (<= (+ (+ -1 (* -1 i_11^0)) length_10^0) 0)) (= __cil_tmp6_15^post (+ 0 head_12^0))) (= Result_4^1 (+ 0 __cil_tmp6_15^post))) (<= 0 (+ 0 len_47^0))) (= tmp_20^post (+ 0 Result_4^1))) (= Result_4^post Result_4^post)) (<= 0 (+ 0 len_47^0))) (<= 0 (+ 0 len_47^0))) (<= 0 (+ 0 len_47^0))) (= x_18^post (+ 0 a_16^0))) (<= 0 (+ 0 len_47^0))) (= __disjvr_0^0 __disjvr_0^post)) (= __disjvr_1^0 __disjvr_1^post)) (= a_140^0 a_140^post)) (= a_16^0 a_16^post)) (= head_12^0 head_12^post)) (= i_11^0 i_11^post)) (= len_47^0 len_47^post)) (= length_10^0 length_10^post)) (= length_19^0 length_19^post)) (= lt_21^0 lt_21^post)) (= t_17^0 t_17^post)) (= tmp_13^0 tmp_13^post)) (= tmp___0_14^0 tmp___0_14^post))))
    (cfg_trans2 pc^0 l6 pc^post l7 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= __disjvr_0^post __disjvr_0^0) (= Result_4^0 Result_4^post)) (= __cil_tmp6_15^0 __cil_tmp6_15^post)) (= __disjvr_0^0 __disjvr_0^post)) (= __disjvr_1^0 __disjvr_1^post)) (= a_140^0 a_140^post)) (= a_16^0 a_16^post)) (= head_12^0 head_12^post)) (= i_11^0 i_11^post)) (= len_47^0 len_47^post)) (= length_10^0 length_10^post)) (= length_19^0 length_19^post)) (= lt_21^0 lt_21^post)) (= t_17^0 t_17^post)) (= tmp_13^0 tmp_13^post)) (= tmp_20^0 tmp_20^post)) (= tmp___0_14^0 tmp___0_14^post)) (= x_18^0 x_18^post)))
    (cfg_trans2 pc^0 l7 pc^post l5 (exists ( (lt_21^1 Int) ) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= t_17^post (+ 0 x_18^0)) (= lt_21^1 lt_21^1)) (= x_18^post (+ 0 lt_21^1))) (= lt_21^post lt_21^post)) (= Result_4^0 Result_4^post)) (= __cil_tmp6_15^0 __cil_tmp6_15^post)) (= __disjvr_0^0 __disjvr_0^post)) (= __disjvr_1^0 __disjvr_1^post)) (= a_140^0 a_140^post)) (= a_16^0 a_16^post)) (= head_12^0 head_12^post)) (= i_11^0 i_11^post)) (= len_47^0 len_47^post)) (= length_10^0 length_10^post)) (= length_19^0 length_19^post)) (= tmp_13^0 tmp_13^post)) (= tmp_20^0 tmp_20^post)) (= tmp___0_14^0 tmp___0_14^post))))
    (cfg_trans2 pc^0 l5 pc^post l3 (exists ( (Result_4^1 Int) ) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= 0 (+ 0 a_140^0)) (<= (+ 0 x_18^0) 0)) (<= 0 (+ 0 x_18^0))) (= Result_4^1 Result_4^1)) (= Result_4^post Result_4^post)) (= __cil_tmp6_15^0 __cil_tmp6_15^post)) (= __disjvr_0^0 __disjvr_0^post)) (= __disjvr_1^0 __disjvr_1^post)) (= a_140^0 a_140^post)) (= a_16^0 a_16^post)) (= head_12^0 head_12^post)) (= i_11^0 i_11^post)) (= len_47^0 len_47^post)) (= length_10^0 length_10^post)) (= length_19^0 length_19^post)) (= lt_21^0 lt_21^post)) (= t_17^0 t_17^post)) (= tmp_13^0 tmp_13^post)) (= tmp_20^0 tmp_20^post)) (= tmp___0_14^0 tmp___0_14^post)) (= x_18^0 x_18^post))))
    (cfg_trans2 pc^0 l5 pc^post l9 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= 0 (+ 0 a_140^0)) (= Result_4^0 Result_4^post)) (= __cil_tmp6_15^0 __cil_tmp6_15^post)) (= __disjvr_0^0 __disjvr_0^post)) (= __disjvr_1^0 __disjvr_1^post)) (= a_140^0 a_140^post)) (= a_16^0 a_16^post)) (= head_12^0 head_12^post)) (= i_11^0 i_11^post)) (= len_47^0 len_47^post)) (= length_10^0 length_10^post)) (= length_19^0 length_19^post)) (= lt_21^0 lt_21^post)) (= t_17^0 t_17^post)) (= tmp_13^0 tmp_13^post)) (= tmp_20^0 tmp_20^post)) (= tmp___0_14^0 tmp___0_14^post)) (= x_18^0 x_18^post)))
    (cfg_trans2 pc^0 l9 pc^post l10 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= __disjvr_1^post __disjvr_1^0) (= Result_4^0 Result_4^post)) (= __cil_tmp6_15^0 __cil_tmp6_15^post)) (= __disjvr_0^0 __disjvr_0^post)) (= __disjvr_1^0 __disjvr_1^post)) (= a_140^0 a_140^post)) (= a_16^0 a_16^post)) (= head_12^0 head_12^post)) (= i_11^0 i_11^post)) (= len_47^0 len_47^post)) (= length_10^0 length_10^post)) (= length_19^0 length_19^post)) (= lt_21^0 lt_21^post)) (= t_17^0 t_17^post)) (= tmp_13^0 tmp_13^post)) (= tmp_20^0 tmp_20^post)) (= tmp___0_14^0 tmp___0_14^post)) (= x_18^0 x_18^post)))
    (cfg_trans2 pc^0 l10 pc^post l8 (exists ( (lt_21^1 Int) ) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= t_17^post (+ 0 x_18^0)) (= lt_21^1 lt_21^1)) (= x_18^post (+ 0 lt_21^1))) (= lt_21^post lt_21^post)) (= Result_4^0 Result_4^post)) (= __cil_tmp6_15^0 __cil_tmp6_15^post)) (= __disjvr_0^0 __disjvr_0^post)) (= __disjvr_1^0 __disjvr_1^post)) (= a_140^0 a_140^post)) (= a_16^0 a_16^post)) (= head_12^0 head_12^post)) (= i_11^0 i_11^post)) (= len_47^0 len_47^post)) (= length_10^0 length_10^post)) (= length_19^0 length_19^post)) (= tmp_13^0 tmp_13^post)) (= tmp_20^0 tmp_20^post)) (= tmp___0_14^0 tmp___0_14^post))))
    (cfg_trans2 pc^0 l8 pc^post l5 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= Result_4^0 Result_4^post) (= __cil_tmp6_15^0 __cil_tmp6_15^post)) (= __disjvr_0^0 __disjvr_0^post)) (= __disjvr_1^0 __disjvr_1^post)) (= a_140^0 a_140^post)) (= a_16^0 a_16^post)) (= head_12^0 head_12^post)) (= i_11^0 i_11^post)) (= len_47^0 len_47^post)) (= length_10^0 length_10^post)) (= length_19^0 length_19^post)) (= lt_21^0 lt_21^post)) (= t_17^0 t_17^post)) (= tmp_13^0 tmp_13^post)) (= tmp_20^0 tmp_20^post)) (= tmp___0_14^0 tmp___0_14^post)) (= x_18^0 x_18^post)))
    (cfg_trans2 pc^0 l11 pc^post l0 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= Result_4^0 Result_4^post) (= __cil_tmp6_15^0 __cil_tmp6_15^post)) (= __disjvr_0^0 __disjvr_0^post)) (= __disjvr_1^0 __disjvr_1^post)) (= a_140^0 a_140^post)) (= a_16^0 a_16^post)) (= head_12^0 head_12^post)) (= i_11^0 i_11^post)) (= len_47^0 len_47^post)) (= length_10^0 length_10^post)) (= length_19^0 length_19^post)) (= lt_21^0 lt_21^post)) (= t_17^0 t_17^post)) (= tmp_13^0 tmp_13^post)) (= tmp_20^0 tmp_20^post)) (= tmp___0_14^0 tmp___0_14^post)) (= x_18^0 x_18^post)))
  )
)