; Nama : Samuel I. H. Sibuea
; NIM : 11S20004

; Prodi : Informatika
; Definisi dan spesifikasi
; CurahHujan (x) menerima sebuah bilangan real yang merupakan hasil pengukuran ketinggian air hujan (mm) yang ditmpung dalam gelas ukur seluas 1 m^2
; CurahHujan (x) : real --> char

; Realisasi LISP:
(defun CurahHujan (x)
    (cond   ((and (> x 0) (< x 100)) 'R)
            ((and (>= x 100) (<= x 300)) 'S)
            ((and (> x 300) (<= x 500)) 'T)
    )
)
