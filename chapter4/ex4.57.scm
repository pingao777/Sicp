(define (replace ?person ?replacer)
  (and (job ?person ?job1)
       (job ?replacer ?job2)
       (or (same ?job1 ?job2)
           (can-do-job ?job2 ?job1))
       (not (same ?person ?replacer))))

;; a)
(replace (Fect Cy D) ?replacer)
;; b)
(and (replace ?person ?replacer)
     (salary ?person ?salary1)
     (salary ?replacer ?salary2)
     (lisp-value > ?salary1 ?salary2))
