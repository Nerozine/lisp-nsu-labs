(defun insert-all (l before to-insert)
    (cond ((null l) NIL)
          ((equal (car l) before) (cons to-insert (cons before (insert-all (cdr l) before to-insert))))
          ((atom (car l)) (cons (car l) (insert-all (cdr l) before to-insert)))
          (T (cons (insert-all (car l) before to-insert) (insert-all (cdr l) before to-insert)))))


(print (insert-all `((2 3) 1 2 3) 3 `(5 6)))
(print (insert-all `((3) 1 2 3) 1 `(NIL (1 2) NIL)))
(print (insert-all `((2 3) 1 2 3) NIL `(5 6)))