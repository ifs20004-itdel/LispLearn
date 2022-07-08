; Nama : Samuel I. H. Sibuea
; NIM  : 11S20004
;==============================================================================================================
; Nama file WujudAir_004.lspp
; nama fungsi wujudAir(x)
; wujudAir:: integer --> integer
; wujudAir(x) melakukan pengecekan wujud suhu air x, x merupakan bilangan real, lalu menampilkan teks keadaan wujud air.
;===============================================================================================================
; Realisasi:
; wujudAir(x):
;  depend on x
;     x >= 100      : GAS
;     0 <= x < 100  : CAIR
;     x < 0         : PADAT

; Realisasi LISP:
; depend on x
;	x >= 100: "gas"
;	x = 0 AND x <100: "cair"
;	x < 0: "padat"
(defun wujudAir(x)
  (cond
    ((>= x 100) 'GAS)
    ((and (>= x 0) (< x 100)) 'CAIR)
    ((< x 0) 'PADAT)
  )
)