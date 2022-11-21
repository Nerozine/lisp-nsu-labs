(defun remove-all (to-remove l &optional result)
	(cond ((null l) NIL)
		  ((equal to-remove (car l)) (remove-all to-remove (cdr l)))
		  (T (cons (car l) (remove-all to-remove (cdr l))))))

(print (remove-all 1 `(NIL 3 1 NIL 3 2 3 NIL)))