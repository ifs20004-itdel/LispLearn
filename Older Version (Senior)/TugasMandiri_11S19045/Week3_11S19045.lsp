; Nama 		: Josua Gaolus Nainggolan
; NIM  		: 11S19045
; Nama file	: Week3_11S19045.lsp
;======================================
; Definisi dan spesifikasi:
; nama fungsi : MakeDate(D)
; MakeDate: date => date
; {MakeDate(D)Membentuk Date, dari hari, bulan, dan tahun}
;Realisasi LISP:
(defun makeDate (d m y)
	(cond ((and (> d 31) (= m 1)) 'ERROR)
		((and (and (= (mod y 4) 0) (> d 29)) (= m 2)) 'ERROR)
		((and (and (/= (mod y 4) 0) (> d 28)) (= m 2)) 'ERROR)
		((and (> d 31) (= m 3)) 'ERROR)
		((and (> d 31) (= m 5)) 'ERROR)
		((and (> d 31) (= m 7)) 'ERROR)
		((and (> d 31) (= m 8)) 'ERROR)
		((and (> d 31) (= m 10)) 'ERROR)
		((and (> d 31) (= m 12)) 'ERROR)
		((and (> d 30) (= m 4)) 'ERROR)
		((and (> d 30) (= m 6)) 'ERROR)
		((and (> d 30) (= m 9)) 'ERROR)
		((and (> d 30) (= m 11)) 'ERROR)
		(t (cons d (list m y)))
	)
)
	
	
; Definisi dan spesifikasi:
; nama fungsi : Date(D)
; Date(D): date => integer
;{Date(D)mengembalikan nilai hari dari tanggal D}
;Realisasi LISP
(defun Day (D)
	(car D)
)


; Definisi dan spesifikasi:
; nama fungsi : Month(D)
; Month(D): date => integer
;{Date(D)mengembalikan nilai bulan dari tanggal D}
;Realisasi LISP
(defun Month (D)
	(car (cdr D))
)


; Definisi dan spesifikasi:
; nama fungsi : Year(D)
; Year(D): date => integer
;{Year(D)mengembalikan nilai hari dari tanggal D}
;Realisasi LISP:
(defun Year (D)
	(car (cdr (cdr D)))
)


; Definisi dan spesifikasi:
; nama fungsi : nextday(P)
; nextday(P): date => date
;{nextday(P)menghitung date yang merupakan keesokan hari date yang diberikan}
;Realisasi LISP:
(defun nextday (P)
	(let
		(
			(d (Day P))
			(m (Month P))
			(y (Year P))
		)
		(cond ((and (= d 31) (= m 1)) (cons (- d 30) (list (+ m 1) y)))
			((and (and (= d 28) (= m 2)) (/= (mod y 4) 0)) (cons (- d 27) (list (+ m 1) y)))
			((and (and (= d 28) (= m 2)) (= (mod y 4) 0)) (cons (+ d 1) (list (+ m 0) y)))
			((and (and (= d 29) (= m 2)) (= (mod y 4) 0)) (cons (- d 28) (list (+ m 1) y)))
			((and (= d 31) (= m 3)) (cons (- d 30) (list (+ m 1) y)))
			((and (= d 30) (= m 4)) (cons (- d 29) (list (+ m 1) y)))
			((and (= d 31) (= m 5)) (cons (- d 30) (list (+ m 1) y)))
			((and (= d 30) (= m 6)) (cons (- d 29) (list (+ m 1) y)))
			((and (= d 31) (= m 7)) (cons (- d 30) (list (+ m 1) y)))
			((and (= d 31) (= m 8)) (cons (- d 30) (list (+ m 1) y)))
			((and (= d 30) (= m 9)) (cons (- d 29) (list (+ m 1) y)))
			((and (= d 31) (= m 10)) (cons (- d 30) (list (+ m 1) y)))
			((and (= d 30) (= m 11)) (cons (- d 29) (list (+ m 1) y)))
			((and (= d 31) (= m 12)) (cons (- d 30) (list (+ m 1a) (+ y 1))))
			(t (cons (+ d 1) (list m y)))
		)
	)
)

; Definisi dan spesifikasi:
; nama fungsi : yesterday(P)
; yesterday(P): date => date
;{yesterday(P)menghitung date yang merupakan satu hari sebelum date yang diberikan}	
;Realisasi LISP:
(defun yesterday (P)
	(let
		(
			(d (Day P))
			(m (Month P))
			(y (Year P))
		)
		(cond ((and (= d 1) (= m 1)) (cons (+ d 30) (list (+ m 11) (- y 1))))
			((and (and (= d 29) (= m 2)) (= (mod y 4) 0)) (cons (- d 1) (list (+ m 0) y)))
			((and (and (= d 1) (= m 3)) (= (mod y 4) 0)) (cons (+ d 28) (list (- m 1) y)))
			((and (and (= d 1) (= m 3)) (/= (mod y 4) 0)) (cons (+ d 27) (list (- m 1) y)))
			((and (= d 1) (= m 4)) (cons (+ d 30) (list (- m 1) y)))
			((and (= d 1) (= m 5)) (cons (+ d 29) (list (- m 1) y)))
			((and (= d 1) (= m 6)) (cons (+ d 30) (list (- m 1) y)))
			((and (= d 1) (= m 7)) (cons (+ d 29) (list (- m 1) y)))
			((and (= d 1) (= m 8)) (cons (+ d 30) (list (- m 1) y)))
			((and (= d 1) (= m 9)) (cons (+ d 29) (list (- m 1) y)))
			((and (= d 1) (= m 10)) (cons (+ d 29) (list (- m 1) y)))
			((and (= d 1) (= m 11)) (cons (+ d 30) (list (- m 1) y)))
			((and (= d 1) (= m 12)) (cons (+ d 29) (list (- m 1) y)))
			(t (cons (- d 1) (list m y)))
		)
	)
)


; Definisi dan spesifikasi:
; nama fungsi : IsEqual(P1 P2)
; IsEqual(P1,P2): date => boolean
;{IsEqual (P1,P2)mengembalikan nilai benar jika tanggal,bulan,dan tahun dari P1 sama dengan tanggal,bulan, dan tahun dari P2}
;Realisasi LISP:
(defun isEq (P1 P2)
	(and
		(=
			(Day P1) (Day P2)
		)	
		(=
			(Month P1) (Month P2)
		)
		(=
			(Year P1) (Year P2)
		)
	)
)


; Definisi dan spesifikasi:
; nama fungsi : IsBefore(P1 P2)
; IsBefore(P1,P2): date => boolean
;{IsBefore (P1,P2)mengembalikan nilai benar jika tanggal,bulan,dan tahun dari P1 sama dengan tanggal,bulan, dan tahun dari P2}
;Realisasi LISP:
(defun IsBefore (P1 P2)
	(and
	(=
			(Day P1) (Day P2)
		)	
		(=
			(Month P1) (Month P2)
		)
		(=
			(Year P1) (Year P2)
		)
	)
)



; Nama 		: Josua Gaolus Nainggolan
; NIM  		: 11S19045
; Nama file	: Week3_11S19045.lsp
;======================================
;defenisi dan spesifikasi

; U : 2 integers => integers
; u (a, n), adalah sebuah bilangan integer yang hasilnya adalah
; a^n dibagi dengan faktorial dari n

; {fungsi antara}

; pangkat : 2 integers => integers
; pangkat (a, n) adalah nilai dari a pangkat n untuk nilai bilangan integers

; FAC :  integers => integers
; FAC (n) adalah nilai dari ( n * (n-1) * (n-2) *...* 1 
; menghasilkan nilai bilangan integers
; Realisasi 
; U (a, n) : pangkat (a,n) / FAC (n)

; Realisasi LISP
(defun FAC (n)
	(cond
		((= n 1) 1)
		(t (* n (FAC (- n 1))))
	)
)

(defun Pangkat (a n)
	(cond
		((= n 0) 1)
		( t (* a(Pangkat a (- n 1))))
	)
)
(defun U (a n)
	(/ (Pangkat a n) (FAC n))
)