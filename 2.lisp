(defun expand-list (l &optional result)
	(cond ((null l) result)
		  ((atom (car l)) (expand-list (cdr l) (append result (list (car l)))))
		  (T (expand-list (cdr l) 
						  (expand-list (car l) result)))))

(expand-list `((1 2) () 3 (4 5 NIL) 15 ((16)) (18 (17))))

(defun expand-list (l)
	(cond ((null l) NIL)
		  ((atom (car l)) (cons (car l) (expand-list (cdr l))))
		  (T (append (expand-list (car l)) (expand-list (cdr l))))))
