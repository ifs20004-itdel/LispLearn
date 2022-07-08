; Nama 		: Josua Gaolus Nainggolan
; NIM  		: 11S19045
; Nama file	: Week5_11S19045.lsp
;======================================
;(6)
; ismember (e, L) : element, list => boolean
; {menghasilkan nilai benar jika e adaah elemen dari list L}
; realisasi
(defun ismember (e L)
	(cond
		((null L) 'false)
		((= (firstelmt L) e)'true)
		(t (ismember e (tail L)))
	)
)

;(7)
; rember (e, L) : element, list => list
; {menghapus sebuah elemen bernilai e dari sebuah list L}
; realisasi
(defun rember (e L)
	(cond
		((isempty L) L)
		(t (cond ((= e (firstelmt L) e) (tail L))
			(t (konso (firstelmt L) (rember e (tail L))))
			)
		)
	)
)

;(8) 
; multirember (e, L) : element, list => list
; {menghapus semua elemen bernilai e dari sebuah list L}
; realisasi
(defun multirember (e L)
	(cond
		((isempty L) L)
		(t (cond ((= e (firstelmt L) e) (multirember e (tail L)))
			(t (konso (firstelmt L) (multirember e (tail L))))
			)
		)
	)
)