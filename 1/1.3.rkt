(define (f a b c)
  (if (> a b)
      (+ (* a a) (if (> b c) (* b b) (* c c)))
      (+ (* b b) (if (> a c) (* a a) (* c c)))))

; test
(if (not (= (f 1 2 3) 13)) "ARGS: 1 2 3")
(if (not (= (f 3 2 1) 13)) "ARGS: 3 2 1")
(if (not (= (f 1 3 2) 13)) "ARGS: 1 3 2")
(if (not (= (f 2 3 1) 13)) "ARGS: 2 3 1")
(if (not (= (f 1 3 1) 10)) "ARGS: 1 3 1")
(if (not (= (f 3 1 1) 10)) "ARGS: 3 1 1")
(if (not (= (f 3 3 3) 18)) "ARGS: 3 3 3")