; Nama : Josua Gaolus Nainggolan
; NIM  : 11S19045
; Nama file Himpunan_11S19045.lsp


;======================================
;MakeSet:list -> set
;MakeSet(L) membuat sebuah set dari sebuah list dengan membuang   semua kemunculan yang lebih dari satu kali 
;Realisasi
(defun MakeSet (L)
	(cond ( ( IsEmpty L) NIL )
	(IsMember ( firstElmt L) L) (konso (firstElmt L) (MakeSet (MultiRember (firstElmt L) L))))
	(t (konso (firstElmt L) (MakeSet (tail L))))
	
)
;======================================
;IsSet:list -> boolean 
;IsSet(L) menentukan apakah L adalah set
;Realisasi
(defun IsSet (L)
 (if ( eq (MakeSet L) L)
  t nil)

)
;======================================
;IsSubSet: 2set -> boolean
;IsSubSet(H1 H2) menentukan apakah H1 benar subset dari H2
(defun IsSubSet (H1 H2)
	(cond ( (IsEmpty H1) 
		t)
	((IsMember (firstElmt H1) H2) (IsSubSet (tail H1) H2))
	(t nil)
	)
)
;======================================
;MakeUnion : 2set -> set 
;MakeUnion(H1 H2) membuat set baru dengan semua anggota elemen H1 dan anggota H2
;nb: jikasalah satu kosong hasilnya adalah himpunan yang tidak kosong, jika kedua set kosong maka hasilnya sebuah set kosong  
;Realisasi
(defun MakeUnion (H1 H2)
	(cond ((IsEmpty H1) H2)
		((IsMember (firstElmt H1) H2) 
		 (konso (firstElmt H1)(MakeUnion (tail H1) (MultiRember(firstElmt H1) H2))))
		(MakeIntersect (tail H1) (H2)) 
	)
)

;======================================
;MakeIntersect: 2set -> set 
;MakeIntersect(H1 H2) membuat interseksi h1 dengan h2 , yaitu set baru dengan anggota elemen yang merupakan anggota H1 dan juga H2 
;nb: jika salah satu kosong maka hasilnya set kosong
;Realisasi
(defun MakeIntersect (H1 H2)
	(cond ((IsEmpty H1 ) nil)
	((IsMember (firstElmt H1) H2) 
	(konso (firstElmt H1) (MakeIntersect (tail H1 ) H2 )))
	(t ( MakeIntersect (tail H1 ) H2))
	)
)
