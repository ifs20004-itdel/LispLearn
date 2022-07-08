; Nama: Samuel I. H. Sibuea
; NIM : 11S20004
; ============================================================================================
; Definisi dan Spesifikasi
; Nama fungsi: pangkat (a,n)
; pangkat (a,n) : 2 integer --> 2integer, string
; pangkat (a,n) menerima masukan dua buah bilangan bulat a dan n, dan mengembalikan nilai a^n dengan cara rekursif.
;=============================================================================================
; Realisasi fungsional:
; pangkat (a,n):
; if  a=0 and n=0 then "Tak terhingga" 
;     else if n=0 then 1
;     else if n<0 then (1/a).(1/a)^(n+1)  
;     else a^n = a.a^(n-1)
; ============================================================================================= 
; Realisasi LISP
(defun pangkat (a n)
   
   (cond 
   ((and (= a 0) (= n 0)) "Tak terhingga")
   ((= n 0) 1)
   ((< n 0) (* (/ 1 a) (pangkat a (+ n 1))))
   (t (* a (pangkat a (- n 1))))
   )   
)