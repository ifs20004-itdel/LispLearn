; Nama : Samuel I. H. Sibuea
; NIM  :11S20004
; =================================================================================================================================================================
; Nama file MAX4.lsp
; nama fungsi MAX4(v,x,y,z)
; MAX2:: integer --> integer
; MAX2(x,y) menentukan bilangan terbesar dari 2 bilangan integer x dan y.
; MAX4:: integer --> integer
; MAX4(v,x,y,z) menentukan bilangan terbesar dari v,x, y, dan z dengan menggunakan fungsi MAX2 yang sudah dibuat sebelumnya. Bilangan v,x,y,dan z merupakan bilangan bulat. 
;=========================================================================================================================================================================
;Realisasi:
;MAX2 (v x):
;	depend on x,v
;		x >= v: x
; 		x < v: v
;MAX4 (v,x,y,z):
;	depend on max(x,v), max(y,z)
;		max(x,v) >= max(y,z): max(x,v)
;		max(x,v) <  max(y,z): max(y,z)  
; Realisasi LISP:
(defun MAX2(v x)
	(cond 	
		((>= v x) v)
		((< v x) x)
	)
)
(defun MAX4(v x y z)
	(cond 
		((>= (MAX2 x v) (MAX2 y z)) (MAX2 x v))
		((< (MAX2 x v) (MAX2 y z)) (MAX2 y z))
	)
)