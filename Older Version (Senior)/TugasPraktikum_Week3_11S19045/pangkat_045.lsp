; Nama : Josua Gaolus Nainggolan
; NIM  : 11S19045
; Nama file  pangakt_045.lsp

;======================================
; Nama fungsi pangkat(a n)
; pangkat:: 2integer >= 0 -> integer 
; pangkat(a b) menentukan hasil pangkat (n) dari suatu bilangan (a)

(defun pangkat(a n)
	(cond ((= n 0) 1)
		(t (* a(pangkat a(- n 1))))
		)
)
