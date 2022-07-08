;Nama	:Josua Gaolus Nainggolan
;Nim	:11S19045
;Nama File: JML_FX4.lsp
;=================================================================
;JML_FX4: 2integer==>integer
;{JML_FX4(x,y) menghitung jumlah pangkat empat dari x dan y sebuah bilangan integer}
;FX2: integer==>integer
;{FX2(x) menghitung pangkat dua dari x sebuah bilangan integer}
;realisasi:
;FX2(x) = x*x
;JML_FX4 = (x*x(x*x)) + (y*y(y*y))
;Realisasi LISP 

(defun FX2 (x)
	(* x x))
(defun JML_FX4 (x y)
	(+ (FX2(FX2 x)) (FX2(FX2 y))))