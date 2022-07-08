; Tipe List
; NIM			    : 11S20004
; Nama			  : Samuel I.H. Sibuea
; Kelas			  : 11IF1
; Dibuat tanggal: 02 Maret 2021
; Nama file		: 11S20004_Tipe_list.lsp

; ==========================
; KONSTRUKTOR
; ===========================
; Konso :: elemen, List --> list
; Konso(e,L) menghasilkan list baru dari sebuah elemen e dan list L
; Fungsi ini sudah terdefinisi di LISP yaitu cons
 (defun Konso (e L)
  (list e L) 
 )

; KonsDot:: List, elemen --> List
; Kons(L,e) menghasilkan sebuah list dari L dan e, dengan e sebagai element terakhir dari L
; Menambahkan eleman e sebagai elemen pertama dari list L.
; Realisasi:
(defun KonsDot (L e)
  (reverse (cons e (reverse L))
  )
)


; ==========================
; SELECTOR LIST:
; ===========================
; FirstElmt:: List --> elemen
; FirstElmt(L) Menampilkan elemen pertama list L 
; Realisasi:
(defun FirstElmt (L)
	(cdr L)
)

; Tail(L):: List --> elemen
; Tail (L) Menampilkan elemen pertama list L 
; Realisasi:
(defun Tail (L)
	(cdr L)
)

; LastElmt(L):: List --> elemen
; LastElmt Menampilkan elemen terakhir list L
; Realisasi:
(defun LastElmt (L)
	(car (reverse L)
	)
)

; Head(L):: List --> list
; Head Menampilkan list tanpa elemen terakhir list L
; Realisasi:
(defun Head (L)
	(reverse (cdr (reverse L))
	)
)


; ==========================
; PREDIKAT terhadap LIST:
; ==========================
; IsEmpty::  List --> boolean
; IsEmpty(L) akan bernilai benar jika list kosong
; Realisasi: 
(defun IsEmpty (L)
	(null L)
)

; IsOneElmt::  List --> boolean
; IsOneElmt(L) akan bernilai benar jika list berisi satu elemen
; Realisasi:
(defun IsOneElmt (L)
	(and (not (IsEmpty L) (IsEmpty (cdr L)))
	)
)

; IsEqual:: List, List --> Boolean
; IsEqual(L P) mengecek kesamaan 2 buah list
; Realisasi:
(defun IsEqual (L P)
(= (FirstElmt P) (FirstElmt L))
(= (car (Tail L)) (car (Tail P)))
(= (LastElmt L) (LastElmt P))
)


; ==========================
; OPERASI TERHADAP LIST
; ==========================
; Banyaknya elemen 
; NbElmt(L) menghasilkan banyaknya elemen dari list L.
; Realisasi:
( defun NbElmt (L)
  (cond ((NULL L) 0) 
		(t (+ 1 (NbElmt (cdr L))
			)
		)
  )
)

; ElmtKeN: integer >=0 , List tidak kosong --> elemen
; ElmtKeN(n, L) Menghasilkan elemen ke-n list L, 0<= n <= banyaknya elemen list.
; realisasi:
(defun ElmtKeN (n L)
(cond((= n 1) (FirstElmt (L)))
(t (ElmtKeN (- n 1) (Tail L))))
)