(defun insert-first (l before to-insert)
    (cond ((null l) NIL)
          ((equal (car l) before) (cons to-insert (cons before (cdr l))))
          ((atom (car l)) (cons (car l) (insert-first (cdr l) before to-insert)))
          ((not (equal (car l) (setq r (insert-first (car l) before to-insert)))) (cons r (cdr l)))
          (T (cons (car l) (insert-first (cdr l) before to-insert)))))

(print (insert-first `(19 (15 17) NIl (9 (5) 8)) `(9 (5) 8) `(4 (2 3) 5)))