; Nama 			:Hedrin S. Sitorus
; NIM  			:11S20019
; Nama file 	:AnakAyam_019.lsp
;=====================================================================================

; Defenisi dan Spesifikasi :
; Anakayam (n) :  1 integer >0 ---> integer >0
; {Anakayam (n) menerima satu inputan bilangan integer dan mengembalikan nilai n dengan menggunakan rumus rekursif}

; REALISASI
; n = 1 + (1 * (n-1))

;Realisasi LISP :
(defun AnakAyam (n)
	(cond ((< n 0) "tidak ada ")((= n 0) " induk ayam")((= n 1) 0)
		((and (>  n 1000) (<= n 10000000)) "peternak ayam")
		((> n 10000000) "Raja ayam")
		(t (+ (AnakAyam (- n 1)) 1))
	)
)

;Aplikasi :
;(AnakAyam 2) --> 1
