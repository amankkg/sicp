;new if procedure
(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

;average procedure
(define (average x y)
  (/ (+ x y) 2))

;improve procedure
(define (improve guess x)
  (average guess (/ x guess)))

;square procedure
(define (square x)
  (* x x))

;good-enough? procedure
(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

;sqrt-iter procedure with plain if (special form)
(define (sqrt-iter guess x)
  (if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x)
                     x)))

;sqrt-iter procedure with new if
;this will result in infinite loop
;both of cases are being calculated every recursive call
(define (sqrt-iter-new guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter-new (improve guess x)
                     x)))

;sqrt-plain procedure with plain if (special form)
(define (sqrt x)
  (sqrt-iter 1.0 x))

;sqrt-new procedure with new if
(define (sqrt-new x)
  (sqrt-iter-new 1.0 x))

;TESTING
(if (not (= (new-if (= 2 3) 0 5) 5)) "new-if | ARGS: 2 3")
(if (not (= (new-if (= 1 1) 0 5) 0)) "new-if | ARGS: 1 1")
(if (not (= (average 1 3) 2)) "average | ARGS: 1 3")
(if (not (= (average -1 1) 0)) "average | ARGS: -1 1")
(if (not (= (improve 1.0 2.0) 1.5)) "improve | ARGS: 1.0 2.0")
(if (good-enough? 1.9995 4) "good-enough? | ARGS: 1.9995 4")
(if (not (good-enough? 1.99995 4)) "good-enough? | ARGS: 1.99995 4")
(if (not (= (sqrt 2) 1.4142156862745097)) "sqrt | ARGS: 2")
