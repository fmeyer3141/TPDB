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

(define-fun init_main ( (pc^0 Loc) (len^0 Int) (tmp^0 Int) ) Bool
  (cfg_init pc^0 l6 true))

(define-fun next_main (
                 (pc^0 Loc) (len^0 Int) (tmp^0 Int)
                 (pc^post Loc) (len^post Int) (tmp^post Int)
             ) Bool
  (or
    (cfg_trans2 pc^0 l0 pc^post l1 (and (= len^post (+ 1 len^0)) (= tmp^0 tmp^post)))
    (cfg_trans2 pc^0 l2 pc^post l0 (and (and (<= 5 (+ 0 len^0)) (= len^0 len^post)) (= tmp^0 tmp^post)))
    (cfg_trans2 pc^0 l2 pc^post l0 (and (and (<= (+ 1 len^0) 4) (= len^0 len^post)) (= tmp^0 tmp^post)))
    (cfg_trans2 pc^0 l2 pc^post l0 (and (and (and (<= (+ 0 len^0) 4) (<= 4 (+ 0 len^0))) (= len^post 0)) (= tmp^0 tmp^post)))
    (cfg_trans2 pc^0 l3 pc^post l4 (and (and (and (<= (+ 0 tmp^0) 0) (<= 0 (+ 0 tmp^0))) (= len^0 len^post)) (= tmp^0 tmp^post)))
    (cfg_trans2 pc^0 l3 pc^post l2 (and (and (<= 1 (+ 0 tmp^0)) (= len^0 len^post)) (= tmp^0 tmp^post)))
    (cfg_trans2 pc^0 l3 pc^post l2 (and (and (<= (+ 1 tmp^0) 0) (= len^0 len^post)) (= tmp^0 tmp^post)))
    (cfg_trans2 pc^0 l1 pc^post l3 (and (= tmp^post tmp^post) (= len^0 len^post)))
    (cfg_trans2 pc^0 l5 pc^post l1 (and (= len^post 0) (= tmp^0 tmp^post)))
    (cfg_trans2 pc^0 l6 pc^post l5 (and (= len^0 len^post) (= tmp^0 tmp^post)))
  )
)
