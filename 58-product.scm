;;; 58-product.scm
(define (make-product m1 m2)
  (cond ((or (= m1 0) (= m2 0))
         0)
        ((= m1 1)
         m2)
        ((= m2 1)
         m1)
        ((and (number? m1) (number? m2))
         (* m1 m2))
        (else
          (list m1 '* m2))))

(define (product? x)
  (and (pair? x)
       (eq? (cadr x) '*)))

(define (multiplier p)
  (car p))

(define (multiplicand p)
  (caddr p))

