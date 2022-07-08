; Nama :Samuel I. H. Sibuea
; NIM  :11S20004
; Nama file tipePoint.lsp

;======================================
; Definisi dan spesifikasi KONSTRUKTOR:
; Nama fungsi makePoint(x,y)
; makePoint:: 2 real --> point
; makePoint(x,y) membentuk sebuah point P dari x dan y, dengan x adalah absis dan y ordinat.
; Realisasi:
(defun makePoint(x y)
   (cons x (cons y nil))
)

;======================================
; Definisi dan spesifikasi SELEKTOR:
; Nama fungsi absis(P)
; absis:: point --> real
; absis(P) mengembalikan nilai absis dari titik P.

; Nama fungsi ordinat(P)
; ordinat:: point --> real
; ordinat(P) mengembalikan nilai ordinat dari titik P.
; Realisasi:

(defun absis(P)
   (car P)
)

(defun ordinat(P)
   (car (cdr P))
)

;=====================================
; Definisi dan spesifikasi PREDIKAT:

; Nama fungsi isOrigin(P)
; isOrigin:: point --> boolean
; isOrigin(P) mengembalikan nilai benar jika titik P adalah titik pusat (0,0).
; Realisasi:

(defun isOrigin (P)
   (and (= (absis P) 0)
        (= (ordinat P) 0)
	)
)


;Nama Fungsi Kuadran
;kuadran : point -->integer
;kuadran (P) mengembalikan lokasi kuadran dari titik P
;Realisasi:
;			depend on	x > 0 and y > 0 : 1
;						x < 0 and y > 0 : 2
;						x < 0 and y < 0 : 3
;						X > 0 and y < 0 : 4
;Realisasi LISP
;(defun Kuadran (P)
;	(cond (and (> (absis P) 0) (> (ordinat P) 0)) 1
;			(t (and (< (absis P) 0) (> (ordinat P) 0)) 2)
;			(t (and (< (absis P) 0) (< (ordinat P) 0)) 3)
;			(t (and (> (absis P) 0) (> (ordinat P) 0)) 4)

(defun kuadran (P)
  (cond ((and (> (absis P)0)(> (ordinat P) 0)) 1)
		((and (< (absis P)0)(> (ordinat P) 0)) 2)
		((and (< (absis P)0)(< (ordinat P) 0)) 3)
		((and (> (absis P)0)(< (ordinat P) 0)) 4)
		(t 'lainnya)
  )
)

