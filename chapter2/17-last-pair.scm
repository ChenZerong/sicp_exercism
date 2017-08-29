;;; 17-last-pair.scm
(define (last-pair items)
  (cond ((null? items)
         (error "list empty -- LAST-PAIR"))
        ((null? (cdr items)) items)
        ((last-pair (cdr items)))))
