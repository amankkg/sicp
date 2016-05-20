; (define A B) - special form where A is name/alias and B is value of last
; (a-plus-abs-b a b) - function declaration
; ((if (> b 0) + -) a b) - function definition
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

; TESTING
(if (not (= (a-plus-abs-b 1 1) 2)) "ARGS: 1 1")
(if (not (= (a-plus-abs-b -1 1) 0)) "ARGS: -1 1")
(if (not (= (a-plus-abs-b 1 -1) 2)) "ARGS: 1 -1")
