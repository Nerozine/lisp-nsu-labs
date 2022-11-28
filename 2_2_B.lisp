(defun find-first (l to-find &optional (pos-in-cur-list 1))
    (cond ((null l) NIL)
          ((equal (car l) to-find) (list pos-in-cur-list))
          ((atom (car l)) (find-first (cdr l) to-find (+ 1 pos-in-cur-list)))
          ((not (null (setq r (find-first (car l) to-find)))) (cons pos-in-cur-list r))
          (T (find-first (cdr l) to-find (+ 1 pos-in-cur-list)))))

(print (find-first `((7 7 (0) 8 NIL) 12 3 (1 (2 ((7 (0) 8 NIL) 8) 45))) `(7 (0) 8 NIL)))