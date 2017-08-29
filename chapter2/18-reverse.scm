;;; 18-reverse.scm
(define (reverse lst)
  (reverse_ lst '()))

(define (reverse_ lst nlst)
  (if (null? lst)
    nlst
    (reverse_ (cdr lst) (cons (car lst) nlst))))
