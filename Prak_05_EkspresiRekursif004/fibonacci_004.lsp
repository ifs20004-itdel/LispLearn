; Nama: Samuel I. H. Sibuea
; NIM : 11S20004
; =============================================================================================
; Definisi dan Spesifikasi
; Nama fungsi: fib (a, b, n)
; fib (a, b, n) : 3 integer --> 3 integer
#|| fib (a, b, n) menerima masukan tiga buah bilangan bulat a, b, dan n, dimana a dan b adalah suku pertama dan kedua dari deret fibonacci,
    dan fungsi mengembalikan nilai dari suku ke-n dari deret fibonacci. Fungsi menyelesaikan deret fibonacci dengan cara rekursif.
||#
; =============================================================================================
; Realisasi fungsional:
; n = 0 then a (Fungsi dimulai dari F(0)) 
; n = 1 then b
; Fib (n) = Fib (n-1) + Fib (n-2)
; =============================================================================================
; Realisasi LISP:

(defun fib (a b n)
    (cond 
        ((= n 0) a) 
        ((= n 1) b)
        (t (+ (fib a b (- n 1)) (fib a b (- n 2))))
    )   
)