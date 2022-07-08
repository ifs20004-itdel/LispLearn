; Nama : Josua Gaolus Nainggolan
; NIM  : 11S19045
; Nama file  faktorial_045.lsp

;======================================
; Nama fungsi faktorial(n)
; faktorial:: integer -> integer 
; faktorial(n) menentukan hasil faktorial dari (n) 

(defun faktorial(n)
    (cond((= n 0) 1)
	(t(* (faktorial(- n 1))n))
    )
)