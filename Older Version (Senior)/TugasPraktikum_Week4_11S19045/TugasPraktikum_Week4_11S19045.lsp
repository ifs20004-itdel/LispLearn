; Nama : Josua Gaolus Nainggolan
; NIM  : 11S19045
; Nama file file.lsp

;======================================
;KOSNTRUKTOR
;1. Konso {untuk kons bulat kosong}
;konso (e L)menghasilkan list baru dari elemen e dan list L
;menambahkan elemen e sebagai elemen pertama dari list L.

(defun Konso (e L)
	(list e L)
)

;=====================================
;2. KonsDot {untuk kons bulat penuh}
;KonsDot(L,e) menghasilkan sebuah list dari L dan e, dengan e sebagai element terakhir dari L

(defun konsb (L e)
	(reverse (cons e (reverse L))
	)
)

;======================================
;SELEKTOR LIST 
;3. FirstElmt
;FirstElmt(L) menghasilkan elemen pertama dari list LIST

(defun FirstElmt (L)
	(car L)
)

;=====================================
;4. Tail 
;Tail (L) menghasilkan list tanpa elemen pertama dari list L

(defun Tail (L)
	(cdr L)
)

;=====================================
;5. LastElmt 
;LastElmt (L) menghasilkan elemen terakir dari list L

(defun LastElmt (L)
	(car (reverse L))
)

;======================================================
;6. Head 
;Head (L) menghasilkan list tanpa elemen terakhir dari list L

(defun Head (L)
	(reverse (Tail (reverse L)))
)

; ================================================
; PREDIKAT 
;7. IsEmpty
;IsEmpty (L) mengembalikan nilai benar jika list L kosong

(defun IsEmpty (L)
	(null L)
)


;8. IsOneElmt 
;IsOneElmt (L) mengembalikan nilai benar jika terdapat satu element dalam list L

(defun IsOneElmt (L)
	(and (not (IsEmpty L)) (IsEmpty (Tail L)))
)
;9. IsEqual
; IsEqual (L1 L2) mengembalikan nilai benar jika elemen dan
; urutan list L1 sama dengan list L2

(defun IsEqual (L1 L2)
	(equal L1 L2)
)

; ==========================
; OPERASI TERHADAP LIST
; 10. NbElmt.
; Banyaknya elemen 
; NbElmt(L) menghasilkan banyaknya elemen dari list L

( defun NbElmt (L)
  (cond ((NULL L) 0) 
		(t (+ 1 (NbElmt (cdr L))))
  )
)

;11. ElmtKeN 
; ElmtKeN (n L) mengembalikan nilai dari elemen ke n dari sebuah list L

(defun ElmtKeN (n L)
	(cond ((= n 1) (FirstElmt L))
		  (t (ElmtKeN (- n 1) (Tail L)))
	)
)

;12. Copy 
; Copy (L) menghasilkan salinan dari list L

(defun Copy (a)
    (setf copy (cons (car a) (cdr a)))
)

