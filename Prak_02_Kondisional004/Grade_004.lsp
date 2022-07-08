; Nama        : Samuel I. H. Sibuea
; NIM         : 11S20004
; Nama file   : Grade_004.lsp
;nama fungsi GRADE(x)
;GRADE: : integer --> string
;GRADE(x) melakukan pengecekan angka x, dimana x adalah nilai mahasiswa dari 0-100
;Setelah x dicek, lalu GRADE(x) akan mengeluarkan output grade antara A, AB, B, BC, C, D, E
;Jika x dimasukkan kurang dari nol(0) atau lebih dari seratus(100), outputnya tulisan "Tidak terdefenisi"
;Realisasi :
;GRADE(x)
;   NA >= 80: A
;   72 <= NA < 80 : AB
;   65 <= NA < 72 : B
;   55 <= NA < 65 : BC
;   45 <= NA < 55 : C
;   35 <= NA < 45 : D
;   NA < 35 : E
;   else (print "Tidak terdefinisi")

;Realisasi LISP :
(defun GRADE(x)
    (cond
        ((and (>= x 85) (<= x 100)) 'A)
        ((and (>= x 72) (< x 85)) 'AB)
        ((and (>= x 65) (< x 72)) 'B)
        ((and (>= x 55) (< x 65)) 'BC)
        ((and (>= x 45) (< x 55)) 'C)
        ((and (>= x 35) (< x 45)) 'D)
        ((and (>= x 0) (< x 35)) 'E)
        (t (format t "Tidak terdefenisi"))
    )
)