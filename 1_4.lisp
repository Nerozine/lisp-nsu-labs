(defun remove-all (to-remove l &optional result)
	(cond ((null l) result)
		  ((equal to-remove (car l)) (remove-all to-remove (cdr l) result))
		  (T (remove-all to-remove (cdr l) (append result (list (car l)))))))
	