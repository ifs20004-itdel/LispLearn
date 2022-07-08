; Nama: Samuel I. H. Sibuea
; NIM : 11S20004
; =============================================================================================
; Definisi dan Spesifikasi
; Nama fungsi: faktorial (n)
; faktorial (n) : integer >=0 --> integer >=0
; faktorial (n) menerima masukan sebuah bilangan bulat n, dan mengembalikan nilai dari n!. Fungsi menyelesaikan faktorial dengan cara rekursif.
; =============================================================================================
; Realisasi fungsional:
; if n=0 then 1
;      else n! = n ∗ (n − 1)!
; =============================================================================================
; Realisasi LISP:
(defun faktorial(n)
	(cond ((= n 0) 1)
		(t (* n (Rekurens (- n 1))))
	)
)