(defun last-el (l)
    (cond ((null (cdr l)) (car l))
          (T (last-el (cdr l)))))