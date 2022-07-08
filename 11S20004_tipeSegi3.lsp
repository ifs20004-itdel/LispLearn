; Nama  : Samuel I. H. Sibuea
; NIM   : 11S20004
; Kelas : 11IF1
; ===========================
; Realisasi LISP: 
; ======================================
; Definisi dan spesifikasi KONSTRUKTOR:

; Nama fungsi makePoint(x,y)
; makePoint:: 2 real --> point
; makePoint(x,y) membentuk sebuah point P dari x dan y, dengan x adalah absis dan y ordinat.
; Realisasi:
(defun makePoint (x y)
   (cons x (cons y nil))
)

; Nama fungsi makeSegi3(x,y)
; makePoint:: 3 real --> point
; makePoint(x,y) membentuk sebuah point P dari A, B, dan C.
; Realisasi:
(defun makeSegi3 (A B C)
   (cons A (cons B (cons C nil)))
)

;======================================
; Definisi dan spesifikasi SELEKTOR:
; Nama fungsi Point1(S)
; Point1:: point --> real
; Point1(S) mengakses nilai titik pertama dari segitiga.
(defun Point1(S)
   (car S)
)

; Nama fungsi Point2(S)
; Point2:: point --> real
; Point2(S) mengakses nilai titik kedua dari segitiga.
; Realisasi:
(defun Point2(S)
   (car (cdr S))
)

; Nama fungsi Point3(S)
; Point3:: point --> real
; Point3(S) mengakses nilai titik ketiga dari segitiga.
; Realisasi:
(defun Point3(S)
   (car (cdr (cdr S))
)

; Nama fungsi JarakP(A B)
; JarakP:: point --> real
; JarakP(A B) menerima dua buah titik dan mengembalikan nilai berupa jarak dari kedua titik tersebut.
; Realisasi:
(defun JarakP (A B)
 (sqrt (+ (* A A)(* B B)))
)

; Nama fungsi IsValid (A B C)
; IsValid (A B C):: point --> real
; IsValid menerima tiga buah poin dan mengembalikan true jika ketiga titik dapat memnuhi syarat untuk dijadikan segitiga. Vice versa
; Realisasi:
(defun IsValid(A B C)
    (cond   ((< JarakP (A B) (+ JarakP(A C) JarakP(B C)))'T)
            ((< JarakP (B C) (+ JarakP(A B) JarakP(A C)))'T)
            ((< JarakP (A C) (+ JarakP(A B) JarakP(B C)))'T)
    t ('Nil)
    )
)