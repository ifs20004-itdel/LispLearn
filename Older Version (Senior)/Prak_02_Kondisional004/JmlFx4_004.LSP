; Nama : Samuel I. H. Sibuea
; NIM  :11S20004
;=================================================================================================================================================================
; Nama file JmlFx4_004.lsp
; nama fungsi JML-FX4(x,y)
; FX2:: integer --> integer
; FX2 (x) menghitung kuadrat dari x, bilangan bulat.
; FX4:: integer --> integer
; FX4 (x) menghitung pangkat empat dari x, bilangan integer dengan menggunakan fungsi FX2 yang sudah dibuat sebelumnya 
; JML-FX4:: integer --> integer
; JML-FX4(x,y) menghitung jumlah dari pangkat 4 dari x dengan pangkat 4 dari y, x dan y adalah bilangan bulat, menggunakan fungsi FX4 (x) yang dibuat sebelumnya.
;==================================================================================================================================================================
; Realisasi:
; FX2 (x): x*x
; FX4 (x): FX2(x)*FX2(x)
; JML-FX4(x,y): FX4(x) + FX4(y)
; Realisasi LISP:
(defun FX2 (x)
	(* x x))
(defun FX4 (x)
	(* (FX2 x) (FX2 x)))
(defun JML-FX4 (x y)
	(+ (FX4 x) (FX4 y)))


