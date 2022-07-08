;Nama File Second_Lesson.LSP
;===========================
; Nama Fungsi Rekurens(x)
;Rekurens merupakan program pemanggil fungsi dari diri sendiri.
;Realisasi:
(defun Rekurens(x)
	(cond ((= x 0) 1)
		(t (* x (Rekurens (- x 1))))
	)
)
 