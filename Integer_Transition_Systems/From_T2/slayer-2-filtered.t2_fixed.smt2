(declare-sort Loc 0)
(declare-const l0 Loc)
(declare-const l1 Loc)
(declare-const l2 Loc)
(declare-const l3 Loc)
(declare-const l4 Loc)
(declare-const l5 Loc)
(declare-const l6 Loc)
(assert (distinct l0 l1 l2 l3 l4 l5 l6))

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

(define-fun init_main ( (pc^0 Loc) (a_20^0 Int) (i_13^0 Int) (i_21^0 Int) (rt_11^0 Int) (st_14^0 Int) ) Bool
  (cfg_init pc^0 l6 true))

(define-fun next_main (
                 (pc^0 Loc) (a_20^0 Int) (i_13^0 Int) (i_21^0 Int) (rt_11^0 Int) (st_14^0 Int)
                 (pc^post Loc) (a_20^post Int) (i_13^post Int) (i_21^post Int) (rt_11^post Int) (st_14^post Int)
             ) Bool
  (or
    (cfg_trans2 pc^0 l0 pc^post l1 (and (and (and (and (and (and (= i_13^post 0) (<= 0 (+ 0 i_13^post))) (<= (+ 0 i_13^post) 0)) (= a_20^0 a_20^post)) (= i_21^0 i_21^post)) (= rt_11^0 rt_11^post)) (= st_14^0 st_14^post)))
    (cfg_trans2 pc^0 l2 pc^post l1 (exists ( (i_13^1 Int) ) (and (and (and (and (and (and (and (and (and (and (<= (+ 1 i_13^0) 10) (= i_13^1 (+ 1 i_13^0))) (= i_13^post i_13^post)) (<= 2 (+ 0 i_13^post))) (<= (+ 0 i_13^post) 2)) (= a_20^post a_20^post)) (<= (+ 0 a_20^post) (+ 0 i_13^post))) (<= (+ 0 i_13^post) (+ 0 a_20^post))) (= i_21^0 i_21^post)) (= rt_11^0 rt_11^post)) (= st_14^0 st_14^post))))
    (cfg_trans2 pc^0 l3 pc^post l1 (and (and (and (and (and (and (and (<= (+ 1 i_13^0) 10) (= i_13^post (+ 1 i_13^0))) (<= 1 (+ 0 i_13^post))) (<= (+ 0 i_13^post) 1)) (= a_20^0 a_20^post)) (= i_21^0 i_21^post)) (= rt_11^0 rt_11^post)) (= st_14^0 st_14^post)))
    (cfg_trans2 pc^0 l1 pc^post l4 (and (and (and (and (and (<= 10 (+ 0 i_13^0)) (= rt_11^post (+ 0 st_14^0))) (= a_20^0 a_20^post)) (= i_13^0 i_13^post)) (= i_21^0 i_21^post)) (= st_14^0 st_14^post)))
    (cfg_trans2 pc^0 l1 pc^post l5 (and (and (and (and (and (and (and (and (= i_21^post i_21^post) (<= (+ 1 i_13^0) 10)) (= i_13^post (+ 1 i_13^0))) (<= (+ 0 i_13^post) (+ 1 i_21^post))) (<= (+ 1 i_21^post) (+ 0 i_13^post))) (<= (+ 1 i_21^post) 10)) (= a_20^0 a_20^post)) (= rt_11^0 rt_11^post)) (= st_14^0 st_14^post)))
    (cfg_trans2 pc^0 l5 pc^post l1 (and (and (and (and (= a_20^0 a_20^post) (= i_13^0 i_13^post)) (= i_21^0 i_21^post)) (= rt_11^0 rt_11^post)) (= st_14^0 st_14^post)))
    (cfg_trans2 pc^0 l6 pc^post l0 (and (and (and (and (= a_20^0 a_20^post) (= i_13^0 i_13^post)) (= i_21^0 i_21^post)) (= rt_11^0 rt_11^post)) (= st_14^0 st_14^post)))
  )
)
