(defun all-equal (l)
    (cond ((null (cdr l )) T)
          ((equal T (all-equal (cdr l))) (equal (car l) (cadr l)))
          (T NIL)))

(defun my-list-length (l)
    (cond ((null l) 0)
          (T (+ 1 (my-list-length (cdr l))))))
		  	  
(defun broken-my-length (l)
    (cond ((and (null (car l)) (null (cdr l))) 0)
          (T (+ 1 (broken-my-length (cdr l))))))
		  