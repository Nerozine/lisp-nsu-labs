(defun find-first (to-find l &optional (current-pos 1))
	(cond ((null l) NIL)
		  ((equal (car l) to-find) current-pos)
		  (T (find-first to-find (cdr l) (+ current-pos 1)))))