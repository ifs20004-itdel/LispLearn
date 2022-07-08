; Definisi dan Spesifikasi
; CekBilBul : Integer --> String
; CekBilBul (x) memeriksa bilangan bulat x, apakah negatif, positif, atau nol.
;===================================================================
; Realisasi fungsional:
; CekBilBul (x):
; 		depend on (x):
;			x > 0 : "Positif"
;			x < 0 : "Negatif"
;			x = 0 : "Nol" 
;===================================================================
; Realisasi LISP:
(defun CekBilBul (x)
	(cond ((> x 0) "Positif")
		  ((< x 0) "Negatif")
		  ((= x 0) "Nol")
	)
)

;===================================================================
; Realisasi fungsional versi 2:
; CekBilBulv2 (x):
; 		depend on (x):
;			x > 0 : "Positif"
;			x < 0 : "Negatif"
;			else  : "Nol" 
;===================================================================
; Realisasi LISP:
(defun CekBilBulv2 (x)
	(cond ((> x 0) 'Positif)
		  ((< x 0) 'Negatif)
		  (t 'Nol)
	)
)