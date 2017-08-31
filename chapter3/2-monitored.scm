;;; 2-monitored.scm
(define (make-monitored f)
  (let ((count 0))
    (lambda (m) 
      (cond ((eq? m 'how-many-calls?) count)
            ((eq? m 'reset-count) (begin (set! count 0) count))
            (else (begin (set! count (+ count 1))
                         (f m)))))))

;;; test
(define s (make-monitored sqrt))
(define add (make-monitored +))

; (s 'how-many-calls?) ;;; 1