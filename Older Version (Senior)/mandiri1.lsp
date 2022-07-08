(defun makedate (DD MM YY)
 (cons DD(cons MM(cons YY nil))
)
)

(defun day (D)
    (car D)
)

(defun month (D)
    (car (cdr D))
)

(defun year (D)
    (car (reverse D))
)

(defun nextday (D)
    (list
        (+ (day D) 1)
        (month D)
        (year D)
    )
)

(defun nextmonth (D)
    (list
    (day D)
    (+ (month D) 1)
    (year D)
    )
)

(defun nextyear (D)
    (list
        (day D)
        (month D)
        (+ (year D) 1)
    )
)

(defun isEqD (d1 d2)
    (cond
        ((and (eq (day d1) (day d2))
        (eq (month d1) (month d2))
        (eq (year d1) (year d2))
    ) 'Ya)
    (t 'Tidak)
)
)

(defun isBefore (d1 d2)
    (cond
        ((and (< (day d1 ) (day d2))
        (< (month d1) (month d2))
        (< (year d1) (year d2))) 'ya)
    (t 'Tidak)
)
)