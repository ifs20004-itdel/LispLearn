; Nama 		: Josua Gaolus Nainggolan
; NIM  		: 11S19045
; Nama file	: Week4_11S19045.lsp
;======================================
; Definisi dan Spesifikasi
; Nama fungsi :Reverse(L)
; Reverse(L):List--->List
; {Reverse(L)memberikan list yang urutan elemennya adalah urutan terurut}

; REALISASI LISP
(defun Inverse (L)
		(reverse L)
)
;======================================
; Definisi dan Spesifikasi
; Nama fungsi : Konkat(L1 L2)
; Konkat(L1 L2):2list---->list
; {Konkat(L1 L2)menghasilkan konkatensi 2 buah list,dengan List 2"sesudah"List 1}

;REALISASI LISP
(defun Inverse (L)
		(Reverse L))
;======================================
; Definisi dan Spesifikasi
; Nama fungsi :IsMember(X,L)
; IsMember(X,L):elemen,List--->boolean
; {IsMember(X,L)adalah benar jika X adalah elemen dari X}

; REALISASI LISP
(defun IsMember(X L) 
	(cond ((IsEmpty L) nil
		(t (cond ((equal (FirstElmt L) x))
				(t (IsMember x (Tail L)))
				)
			)
		)
	)
)

;======================================
; Definisi dan Spesifikasi
; Nama fungsi : IsFirst (e L)
; IsFirst(e L):elemen,list--->boolean
; {IsFirst(e L)mengembalikan nilai benar jika e adalah elemen pertama list L}

; REALISASI LISP
(defun IsFirst(e L)
	(cond ((IsEmpty L) Nil)
			(e (equal (car L) e))
			)
	)


;======================================
; Definisi dan Spesifikasi
; Nama fungsi : IsLast(e L)
; IsLast(e L):elemen,List--->boolean
; {IsLast(e L)mengembalikan nilai benar jika e adalah elemen terakhir dari list L}

; REALISASI LISP
(defun IsLast(e L)
	(cond ((IsEmpty L) Nil)
			(e (equal (car (reverse L)
					)
				)
			)
		)
)

;======================================
; Definisi dan Spesifikasi
; Nama fungsi :IsNblmt(L n)
; IsNblmt(L n):integer---->intger
; {IsNblmt(L n)mengembalikan nilai benar apabila elemen list sama dengan e}

; REALISASI LISP
(defun NbElmt(L)
	(cond ((null L) 0)
		(t (+ 1) (NbElmt (cdr L)))
))

(defun IsNbElmt (L n)
		(cond ((IsEmpty L) nil)
			(t (equal (NbElmt L) n)))
)

;======================================
; Definisi dan Spesifikasi
; Nama fungsi :IsReverse(L1 L2)
; IsReverse(L1 L2):List--->boolean
; {IsReverse(L1 L2)mengembalikan nilai benar apabila L2 adalah list dengan urutan elemen terbalik
;  dibandingkan dengan L1}

; REALISASI LISP
(defun IsReverse(L1 L2)
		(cond ((equal (NbElmt L1) (NbElmt L2))
			(cond ((and (IsEmpty L1) (IsEmpty L2)) T)
				(t (and (equal (FirstElmt L1) FirstElmt L2)) IsReverse (Head (Tail L1)) (Head (Tail L2))))
				)
			)
		(t nil)
)

;======================================
; Definisi dan Spesifikasi
; Nama fungsi : IsXElmtKeN
; IsXElmtKeN(N,X,L):integer>0 dan =< NBElmt(L),List--->boolean
; {IsXElmtKeN(N,X,L)adalah benar jika X adalah elemen list yang ke N}

;REALISASI LISP
(defun IsXElmtKeN (X N L)
		(cond ((IsMember X L)
				(cond ((and (equal N L) (equal X FirstElmt (L))) T)
					(t (or (IsXElmtKeN X (prec N) (Tail L))
							nil)
					)
				)
		(t nil)
)))