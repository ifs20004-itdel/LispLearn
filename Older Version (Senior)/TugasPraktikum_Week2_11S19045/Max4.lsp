;Nama	:Josua Gaolus Nainggolan
;Nim	:11S19045
;Nama File:Max4.lsp
;==================================================================
;Max4: 4integer==>integer
;{Max4(v x y z): menentukan nilai maksimum dari empat integer v,x,y,dan z}
;Max2: 2integer==>integer
;{Max2(a b) menentukan nilai maksimum dari dua integer a b }
;Realisasi
;Max4(v x y z): (Max2(Max2 v x )(Max2 y z)) 
;Realisasi LISP
(defun Max2 (a b)
	(cond((>= a b) a)
		(t b) 
		))
(defun Max4 (v x y z)
	(Max2 (Max2 v x) (Max2 y z))
	)