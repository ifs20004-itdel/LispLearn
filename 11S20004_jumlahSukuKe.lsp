; Nama  : Samuel I. H. Sibuea
; NIM   : 11S20004
; Kelas : IF1
; Nama file : 11S20004_jumlahSukuKe.LSP
; ============================
; Definisi dan Spesifikasi
; JumlahSukuKe menerima 2 buah bulangan bulat a dan n, dimana a suku pertama, dan n mencari jumlah deret.
; JumlahSukuKe (a b f s): integer,function --> integer
; ============================
; Realisasi:
(defun jumlahSukuKe (a n f s)
    (cond   ((> a n) 1))
            (* 2 a)
            (Sigma (funcall f a ) n f s)
    )
)
; Contoh penulisan di GNU CLISP: (jumlahSukuKe (1 10 (lambda (+ (* 3 S9) 2)) (lambda (a) (* 2 a)))
