(declare-sort Loc 0)
(declare-const l0 Loc)
(declare-const l2 Loc)
(declare-const l1 Loc)
(declare-const l3 Loc)
(declare-const l4 Loc)
(declare-const l5 Loc)
(assert (distinct l0 l2 l1 l3 l4 l5))

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

(define-fun init_main ( (pc^0 Loc) (Result_4^0 Int) (__disjvr_0^0 Int) (k_7^0 Int) (w_8^0 Int) (x_5^0 Int) (y_6^0 Int) ) Bool
  (cfg_init pc^0 l5 true))

(define-fun next_main (
                 (pc^0 Loc) (Result_4^0 Int) (__disjvr_0^0 Int) (k_7^0 Int) (w_8^0 Int) (x_5^0 Int) (y_6^0 Int)
                 (pc^post Loc) (Result_4^post Int) (__disjvr_0^post Int) (k_7^post Int) (w_8^post Int) (x_5^post Int) (y_6^post Int)
             ) Bool
  (or
    (cfg_trans2 pc^0 l0 pc^post l2 (and (and (and (and (and (and (<= 0 (+ -2 (* -1 x_5^0))) (= x_5^post (+ 1 x_5^0))) (= y_6^post (+ 1 y_6^0))) (= Result_4^0 Result_4^post)) (= __disjvr_0^0 __disjvr_0^post)) (= k_7^0 k_7^post)) (= w_8^0 w_8^post)))
    (cfg_trans2 pc^0 l2 pc^post l1 (and (and (and (and (and (and (= __disjvr_0^post __disjvr_0^0) (= Result_4^0 Result_4^post)) (= __disjvr_0^0 __disjvr_0^post)) (= k_7^0 k_7^post)) (= w_8^0 w_8^post)) (= x_5^0 x_5^post)) (= y_6^0 y_6^post)))
    (cfg_trans2 pc^0 l1 pc^post l0 (and (and (and (and (and (= Result_4^0 Result_4^post) (= __disjvr_0^0 __disjvr_0^post)) (= k_7^0 k_7^post)) (= w_8^0 w_8^post)) (= x_5^0 x_5^post)) (= y_6^0 y_6^post)))
    (cfg_trans2 pc^0 l0 pc^post l3 (and (and (and (and (and (and (<= (+ -1 (* -1 x_5^0)) 0) (= Result_4^post Result_4^post)) (= __disjvr_0^0 __disjvr_0^post)) (= k_7^0 k_7^post)) (= w_8^0 w_8^post)) (= x_5^0 x_5^post)) (= y_6^0 y_6^post)))
    (cfg_trans2 pc^0 l4 pc^post l0 (and (and (and (and (and (and (and (<= 0 (+ -2 k_7^0)) (<= 0 (+ -2 w_8^0))) (= Result_4^0 Result_4^post)) (= __disjvr_0^0 __disjvr_0^post)) (= k_7^0 k_7^post)) (= w_8^0 w_8^post)) (= x_5^0 x_5^post)) (= y_6^0 y_6^post)))
    (cfg_trans2 pc^0 l4 pc^post l3 (and (and (and (and (and (and (<= (+ -1 k_7^0) 0) (= Result_4^post Result_4^post)) (= __disjvr_0^0 __disjvr_0^post)) (= k_7^0 k_7^post)) (= w_8^0 w_8^post)) (= x_5^0 x_5^post)) (= y_6^0 y_6^post)))
    (cfg_trans2 pc^0 l5 pc^post l4 (and (and (and (and (and (= Result_4^0 Result_4^post) (= __disjvr_0^0 __disjvr_0^post)) (= k_7^0 k_7^post)) (= w_8^0 w_8^post)) (= x_5^0 x_5^post)) (= y_6^0 y_6^post)))
  )
)
