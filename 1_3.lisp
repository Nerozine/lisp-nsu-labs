(defun find-all (to-find l &optional (current-pos 1))
	(cond ((null l) NIL)
		  ((equal (car l) to-find) (cons current-pos (find-all to-find (cdr l) (+ 1 current-pos))))
		  (T (find-all to-find (cdr l) (+ 1 current-pos)))))

(print (find-all NIL `(NIL 3 1 NIL 3 2 3 NIL)))