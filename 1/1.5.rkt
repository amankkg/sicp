(define (p) (p))
(define (test x y)
  (if (= x 0)
      0
      y))

; in case of interpreter is using applicative-order evaluation (which is used by DrRacket)
; the evaluation of this function leads to infinite loop (arguments evaluation first)
; otherwise, if interpreter will be using normal-order evaluation
; evaluation result of this function will be '0' (second argument is unreachable)
(test 0 (p))
