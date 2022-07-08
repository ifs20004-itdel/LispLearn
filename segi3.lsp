; makePoint
(defun makePoint (x y)
   (cons x (cons y nil))
) 
;MakeSegi3
(defun MakeSegi3 (A B C)
    (list A B C)
)
;;Koordinat
(defun absis (X)
   (car X)
)

(defun ordinat (Y)
   (car (cdr Y))
)
;;==========================
;Point
(defun Point1 (S)
    (car (MakeSegi3 A B C))
)
(defun Point2 (S)
    (car (cdr (MakeSegi3 A B C)))
)
(defun Point3 (S)
    (car (reverse (MakeSegi3 A B C)))
)
;;============================
;Distance
(defun sqr (d)
    (* d d)
)
(defun JarakP (A B)
    (sqrt (+ (sqr (- (absis A) (absis B))) (sqr (- (ordinat A) (ordinat B)))))
)
;;============================
(defun isValid(A B C)
  (cond 
        ((and (< (JarakP A B) (+ (JarakP B C) (JarakP A C)))
        (< (JarakP A C) (+ (JarakP B C) (JarakP A B)))
        (< (JarakP B C) (+ (JarakP A B) (JarakP A C)))) 'TRUE)
        (t 'FALSE)
  )
)