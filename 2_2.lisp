(defun find-all (l to-find &optional result way (pos-in-cur-list 1))
    (cond ((null l) result)
          ((equal (car l) to-find) (find-all (cdr l) to-find (append result (list (append way (list pos-in-cur-list)))) way (+ 1 pos-in-cur-list)))
          ((atom (car l)) (find-all (cdr l) to-find result way (+ 1 pos-in-cur-list)))
          (T (find-all (cdr l)
                       to-find
                       (find-all (car l) to-find result (append way (list pos-in-cur-list)) 1)
                       way
                       (+ 1 pos-in-cur-list)))))

;; todo: fix (car r)
(defun find-all (l to-find &optional (pos-in-cur-list 1))
    (cond ((null l) NIL)
          ((equal (car l) to-find) (cons (list pos-in-cur-list) (find-all (cdr l) to-find (+ 1 pos-in-cur-list))))
          ((atom (car l)) (find-all (cdr l) to-find (+ 1 pos-in-cur-list)))
          ((not (null (setq r (find-all (car l) to-find)))) (cons (cons pos-in-cur-list (car r)) 
                                                                  (find-all (cdr l) to-find (+ 1 pos-in-cur-list))))
          (T (find-all (cdr l) to-find (+ 1 pos-in-cur-list)))))

(print (find-all `(1 (3 1 2) ((1 2) 3 (1 2)) (2 (1 2 3)3 (0 (1 6))) 4 1) `(1 2)))
(print (find-all `(1 (2 1) 3 (2 3 (0 (1 6))) 4 1) `1))
(print (find-all `(2 1) 1))