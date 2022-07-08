;Nama	:Josua Gaolus Nainggolan
;Nim	:11S19045
;Nama file:
;==================================================================
 (defun FX2 (x)
	(* x x)
	)

(defun FX3 (x)
	(* (FX2 x) x)
	)
(defun FX4 (x)
		(* (FX3 x) x)
		)
(defun FX5 (x)
	(FX3 (FX2 x))
	)
(defun FX6 (x)
	(* ((FX3 x) (FX2 x)) x)
	)