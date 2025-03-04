(declare-sort Loc 0)
(declare-const l0 Loc)
(declare-const l1 Loc)
(declare-const l2 Loc)
(declare-const l3 Loc)
(declare-const l4 Loc)
(declare-const l5 Loc)
(declare-const l6 Loc)
(declare-const l7 Loc)
(declare-const l8 Loc)
(declare-const l9 Loc)
(assert (distinct l0 l1 l2 l3 l4 l5 l6 l7 l8 l9))

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

(define-fun init_main ( (pc^0 Loc) (i^0 Int) (k^0 Int) ) Bool
  (cfg_init pc^0 l9 true))

(define-fun next_main (
                 (pc^0 Loc) (i^0 Int) (k^0 Int)
                 (pc^post Loc) (i^post Int) (k^post Int)
             ) Bool
  (or
    (cfg_trans2 pc^0 l0 pc^post l1 (and (= i^post (+ 1 i^0)) (= k^0 k^post)))
    (cfg_trans2 pc^0 l2 pc^post l0 (and (= i^0 i^post) (= k^0 k^post)))
    (cfg_trans2 pc^0 l2 pc^post l0 (and (= i^0 i^post) (= k^0 k^post)))
    (cfg_trans2 pc^0 l2 pc^post l3 (and (= i^0 i^post) (= k^0 k^post)))
    (cfg_trans2 pc^0 l1 pc^post l2 (and (= i^0 i^post) (= k^0 k^post)))
    (cfg_trans2 pc^0 l4 pc^post l5 (and (= i^0 i^post) (= k^0 k^post)))
    (cfg_trans2 pc^0 l6 pc^post l4 (and (= i^0 i^post) (= k^0 k^post)))
    (cfg_trans2 pc^0 l6 pc^post l4 (and (= i^0 i^post) (= k^0 k^post)))
    (cfg_trans2 pc^0 l6 pc^post l5 (and (= i^0 i^post) (= k^0 k^post)))
    (cfg_trans2 pc^0 l7 pc^post l4 (and (and (<= (+ 0 i^0) (+ 0 k^0)) (= i^0 i^post)) (= k^0 k^post)))
    (cfg_trans2 pc^0 l7 pc^post l6 (and (and (<= (+ 1 k^0) (+ 0 i^0)) (= i^0 i^post)) (= k^0 k^post)))
    (cfg_trans2 pc^0 l3 pc^post l4 (and (and (<= (+ 1 k^0) 0) (= i^0 i^post)) (= k^0 k^post)))
    (cfg_trans2 pc^0 l3 pc^post l7 (and (and (<= 0 (+ 0 k^0)) (= i^0 i^post)) (= k^0 k^post)))
    (cfg_trans2 pc^0 l8 pc^post l1 (and (= k^post k^post) (= i^post 0)))
    (cfg_trans2 pc^0 l9 pc^post l8 (and (= i^0 i^post) (= k^0 k^post)))
  )
)
