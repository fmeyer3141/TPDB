(declare-sort Loc 0)
(declare-const f1_0_main_Load Loc)
(declare-const f32_0_increase_GE Loc)
(declare-const f95_0_increase_aux_LE Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_Load f32_0_increase_GE f95_0_increase_aux_LE __init ))

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

(define-fun init_main ( (pc Loc) (arg1 Int) (arg2 Int) ) Bool
  (cfg_init pc __init true))

(define-fun next_main (
                 (pc Loc) (arg1 Int) (arg2 Int)
                 (pc1 Loc) (arg1P Int) (arg2P Int)
             ) Bool
  (or
    (cfg_trans2 pc f1_0_main_Load pc1 f32_0_increase_GE (and (and (> arg1 0) (> arg2 (- 1))) (= arg2 arg1P)))
    (cfg_trans2 pc f32_0_increase_GE pc1 f32_0_increase_GE (and (and (and (> arg1 (- 1)) (< arg1 10)) (> (+ arg1 1) arg1)) (= (+ arg1 1) arg1P)))
    (cfg_trans2 pc f32_0_increase_GE pc1 f95_0_increase_aux_LE (and (< arg1 10) (= arg1 arg1P)))
    (cfg_trans2 pc f95_0_increase_aux_LE pc1 f95_0_increase_aux_LE (and (and (> arg1 5) (> (+ arg1 1) arg1)) (= (+ arg1 1) arg1P)))
    (cfg_trans2 pc __init pc1 f1_0_main_Load true)
  )
)
