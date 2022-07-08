; KONSTRUKTOR
; Konso(e,L) menghasilkan list baru dari sebuah elemen e dan list L
; Fungsi ini sudah terdefinisi di LISP yaitu cons
 (write (reverse '(a b c d (e f))))
 (terpri)

 (defun Konso (e L)
  (list e L) ; boleh dengan cara lain.
 )


; Kons(L,e) menghasilkan sebuah list dari L dan e, dengan e sebagai element terakhir dari L
(defun KonsDot (L e)
  (reverse (list L e))
  )

;FirstElmt (L) menghasilkan elemen pertama list
(defun FirstElmt (Konso (e L))
    (car (Konso (e L)))
)