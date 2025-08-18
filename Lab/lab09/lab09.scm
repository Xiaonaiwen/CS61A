(define (over-or-under num1 num2) 
(
  if 
  (< num1 num2) -1
                (if
                (= num1 num2) 0 1
                )
))






(define (make-adder num)
        (lambda (inc) (+ num inc))
)





(define (composed f g)
(
  lambda (x) (f (g x))
)
)




(define (repeat f n) 
  (
    define (temp x)
      (if
        (= n 1) (f x) (f ((repeat f (- n 1)) x))) 
  )
  temp
)




(define (max a b)
  (if (> a b)
      a
      b))

(define (min a b)
  (if (> a b)
      b
      a))

(define (gcd a b) 
  (if
    (>= a b) (if (= 0 (modulo a b)) b (gcd b (modulo a b)))
    (if (= 0 (modulo b a)) a (gcd a (modulo b a)))
  )
)
