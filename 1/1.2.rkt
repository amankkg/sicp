(define solution (/ (+ 5 (+ 4 (- 2 (- 3 (+ 6 (/ 4 5)))))) (* 3 (- 6 2) (- 2 7))))

; TESTING
(if (not (= solution (/ -37 150))) "not equal to -37/150 (or -14.8/60)")