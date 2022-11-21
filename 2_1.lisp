(defun atoms-amount (l)
	(cond ((null l) 0)
		  ((atom (car l)) (+ 1 (atoms-amount (cdr l))))
		  (T (+ (atoms-amount (car l)) (atoms-amount (cdr l))))))