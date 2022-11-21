(defun find-all (l to-find &optional result way (pos-in-cur-list 1))
    (cond ((null l) result)
          ((equal (car l) to-find) (find-all (cdr l) to-find (append result (list (append way (list pos-in-cur-list)))) way (+ 1 pos-in-cur-list)))
          ((atom (car l)) (find-all (cdr l) to-find result way (+ 1 pos-in-cur-list)))
          (T (find-all (cdr l)
                       to-find
                       (find-all (car l) to-find result (append way (list pos-in-cur-list)) 1)
                       way
                       (+ 1 pos-in-cur-list)))))