(defun FX3 (x)
	(* (FX2 x) x))
(defun jml-dr-pangkat3 (x y)
	(+ (FX3 x) (FX3 y)))
(defun F (x)
	(jml-dr-pangkat3 (* x 2) (+ x 2)))	
	