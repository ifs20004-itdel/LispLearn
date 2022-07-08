; Nama : Josua Gaolus Nainggolan
; NIM  : 11S19045
; Nama Tree_11S19045.lsp

;======================================
;Akar:PohoN-ner tidak kosong -> Elemen
;Akar(P)Akar dari P. jika P adalah (A,PN)=Akar (P) Adalah A 
;Realisasi LISP
(defun Akar (P)
	(car P)
)
;========================================================
;Left : PohonBiner tidak kosong  → PohonBiner 
;{ Left(P) adalah sub pohon kiri dari P. Jika P adalah  /L,A,R\ maka  Left (P) =  L }
;Realisasi LISP
(defun Left (P)
	(car (cdr P))
)
;========================================================
;Right : PohonBiner tidak kosong  → PohonBiner 
;{ Right(P) adalah sub pohon kanan dari P. Jika P adalah  /L,A,R\ maka Right (P)= R }
;Realisasi LISP 
(defun right (P)
	(car (cdr (cdr P)))
)
;========================================================
;IsTreeEmpty : PohonBiner  →   boolean 
;{IsTreeEmpty(P)  memeriksa apakah P kosong/tidak }
;Realisasi LISP
(defun IsTreeEmpty (P)
	(null p)
)
;========================================================
;isOneElmt : PohonBiner  →   boolean 
;{isOneElmt(P) true jika P hanya mempunyai satu elemen/memeriksa apakah hanya mempunyai 1 elemen  }
;Realisasi LISP
(defun isOneElmt (P)
	(and 
		(not (null P)) 
		(null (left P)) (null (right P))
	)
)
;========================================================
;IsUnerLeft : PohonBiner  →   boolean 
;{IsUnerLeft(P) true jika P hanya mengandung sub pohon kiri tidak kosong: (//L A \\) } 
;Realisasi LISP
(defun IsUnerLeft (P)
	(and
		(not (null P)) 
		(not (null (left P))) (null (right P))
	)	
)
;========================================================
;IsUnerRight : PohonBiner  →   boolean 
;{IsUnerRight(P) true jika P hanya mengandung sub pohon kanan tidak kosong: (//A R\\) }
;Realisasi LISP
(defun IsUnerRight (P)
	(and 
		(not (null P))
		(not (null (right P))) (null (left P))
	)	
)
;========================================================
;IsBiner : PohonBiner  tidak kosong →   boolean 
;{IsBiner(P) true jika P  mengandungsub pohon kiri dan sub pohon kanan : (//L A R\\) }
;Realisasi LISP
(defun IsBiner (P)
	(and 
		(not (null P))
		(not (null (right P))) (not (null (left P)))
	)	
)
;========================================================
;IsExitLeft : PohonBiner  tidak kosong  →   boolean 
;{IsExitLeft(P) true jika P  mengandung sub pohon kiri }
;Realisasi LISP
(defun IsExitLeft (P)
	(and 
		(not (null P))
		(not (null (left P)))
	)
)
;========================================================
;IsExitRight : PohonBiner  tidak kosong  →   boolean 
;{IsExitRight(P) true jika P  mengandung sub pohon kanan  }
;Realisasi LISP 
(defun IsExitRight (P)
	(and 
		(not (null P))
		(not (null (right P)))
	)	
)
;========================================================
;NbElmt : PohonBiner  →   integer ≥ 0 
;{NbElmt(P) fungsi yang menghitung Banyaknya jumlah elemen dari pohon P 
;Realisasi LISP
(defun NbELmt (P)
	(cond 
		((isOneElmt P) 1)
			(t (cond ((IsBiner P)
					(+ (NbELmt (left P)) 1 (NbELmt (right P))))
					((IsUnerLeft P) (+ 1 (NbELmt (left P))))
					((IsUnerRight P) (+ 1 (NbELmt (right P))))
				)
			)
	)	
)
;========================================================
;NbDaun : PohonBiner  →   integer ≥ 0 
;{NbDaun(P) fungsi untuk menghitung banyak nya jumlah daun dari pohon P}
;Realisasi LISP   
(defun NbDaun (P)
	(cond 
		((isOneElmt P) 1)
		(t (cond ((IsBiner P)
			(+ (NbDaun (left P)) (NbDaun (right P))))
			((IsUnerLeft P) (NbDaun (left P)))
			((IsUnerRight P) (NbDaun (right P)))
		   )
		)
	)	
)
;========================================================
;RePreFix : Pohon Biner →   list of elemen 
;{RePreFix (P) fungsi untuk memberikan representasi linear (dalam bentuk list), dengan urutan elemen list sesusai dengan urutan penulisan
;Realisasi LISP
(defun RePreFix (P)
	(cond ((isOneElmt P) (list (Akar P)))
		(t (cond ((IsBiner P)
				  (append (list (akar P))
				  		  (RePreFix (left P))
						  (RePreFix (right P))))
				  ((IsUnerLeft P)
					(append (list (akar P))
							(RePreFix (left P))))
				  ((IsUnerRight P)
					(append (list (akar P))
							(RePreFix (right P))))
			)
		)			
	)
)

(setq P1 '(*(5(3(2)(1))(-))(/(2)(4))))