(defun find-all (to-find l &optional (current-pos 1) (result NIL))
	(cond ((null l) result)
		  ((equal (car l) to-find) (find-all to-find (cdr l) (+ current-pos 1) (append result (list current-pos))))
		  (T (find-all to-find (cdr l) (+ current-pos 1) result))))