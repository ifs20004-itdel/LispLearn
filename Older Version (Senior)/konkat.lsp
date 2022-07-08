; Nama : Josua Gaolus Nainggolan
; NIM  : 11S19045
; Nama file konkat.lsp

;======================================

;Konso
(defun Konso (e L)
	(cons e L)
)
;Konsb
(defun Konsb (L e)
	(reverse  (cons e (reverse L))
	)
)

;FirstElmt
(defun FirstElmt (L)
	(cdr L)
)
;Tail
(defun Tail (L)
	(cdr L)
)
;LastElmt
(defun LastElmt (L)
	(car (reverse L)
	)
)
;Head
(defun Head (L)
	(reverse (cdr (reverse L))
	)
)
;IsEmpty
(defun IsEmpty (L)
	(null L)
)

;IsOnElmt
(defun IsOnElmt (L)
	(and (not (isempty L) (isempty (cdr L)))
	)
)
;IsMember
(defun IsMember (X L)
	(if (null L)	nil ;basis-0
		(if (eq X (car L)) tablet	
		(ismember X (cdr L)))
	)
)
;NbElmt
(defun NbElmt (L)
		(length L)
)
;Konkat
(defun Konkat (L1 L2)
	(append L1 L2)
)
;Inverse
(defun Inverse (L)
	(reverse L)
)

	