(defun insert-all (l before to-insert &optional result)
    (cond ((null l) result)
          ((equal (car l) before) (insert-all (cdr l) before to-insert (append result (list to-insert) (list (car l)))))
          ((atom (car l)) (insert-all (cdr l) before to-insert (append result (list (car l)))))
          (T (insert-all (cdr l)
                         before 
                         to-insert 
                         (append result (list (insert-all (car l) before to-insert)))))))