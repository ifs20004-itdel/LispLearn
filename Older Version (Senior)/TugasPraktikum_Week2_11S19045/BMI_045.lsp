;Nama	:Josua Gaolus Nainggolan
;Nim	:11S19045
;Nama file:CekBilangan.lsp
;==================================================================
;cek: integer==>string
;{cek(x)merupakan suatu fungsi untuk menyatakan berat badan seseorang dengan menggunakan character
;FX2: integer==>integer
;{FX2(x) menghitung pangkat dua dari x sebuah bilangan integer}
;BMI: 2integer==>integer
;{BMI(x y)membagikan berat badan dengan tinggi badan
;realisasi
;FX2(x) = x*x
;BMI(x y) = /y (FX2 X)
;Realisasi LISP
(defun FX2(x)
	(* x x))
(defun BMI (x y)
	(cek(/y (FX2 X))))
(defun cek (x)
	(cond ((< x 18.5) 'kurus)
		((and (>= x 18.5)(<= x 22.9)) 'normal)
		((and (>= x 23)(<= x 24.9)) 'overweight)
		((>= x 25) 'obesitas)
		)
		)