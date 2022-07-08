;Nama	: Josua Gaolus Nainggolan
;Nim	: 11S19045
;Nama File: grade.lsp
;==================================================================
;Grade: integer==>string
;{GRADE(x)untuk menetukan grade seseorang 
;realisasi
;grade(x):depen on(x)
;grade x >= 80 :A
;grade x >= 72, x < 80 :AB
;grade x >= 65, x < 72 :B
;grade x >= 57, x < 65 :BC
;grade x >= 50, x < 57 :C
;grade x >= 35, x < 50 :D
;grade x < 35		   :E
;Realisasi LISP
(defun GRADE (x)
	(cond ((>= x 80) 'A)
		((and (>= x 72)(< x 80))  'AB)
		((and (>= x 65) (< x 72))  'B)
		((and (>= x 57) (< x 65)) 'BC)
		((and (>= x 50) (< x 57))  'C)
		((and (>= x 35) (< x 50))  'D)
		((and (>= x 0) (< x 35))   'E)
		)
		)
		