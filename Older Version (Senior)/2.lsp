;Nama file:1.lsp
;Nama	  :Josua Gaolus Nainggolan
;Nim	  :11S19045

(defun C (x) (* x x))
(defun D (x y) (C (- x y)))
(defun LS (x1 y1 x2 y2)
	(let ((D1 (D y2 y1))
		  (D2 (D x2 x1)))
	  (let ((z (+ D1 D2)))
		(sqrt z))))
		