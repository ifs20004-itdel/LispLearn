;Nama		:Josua Gaolus Nainggolan 
;Nim 		:11S19045
;Nama file	:ListOfList.lsp
;==============================================
;1.PREFIKAT KHUSUS UNTUK LIST OF LIST
;(a)IsAtom:list of list => boolean
;IsAtom(S)benar jika S adalah atom, yaitu terdiri dari sebuah atom 
;Realisasi
(defun IsAtom (L)
	(if (atom s) 
			t
			nil
		)
	)

;(b)IsList: list of list => Boolean 
;IsList(S)benar jika S adalah list 
;Realisasi
(defun IsList (S)
	(listp S)
)

;(c)isMemberS: list of list => boolean	
;isMemberS(X S)memeriksa apakah X termasuk elemen list 
;Realisasi
(defun isMemberS (X S)
	(if (null S)	nil		;basis-0
		(or 
			(	
				if (listp (car S))
				(isMemberS X (car S))
				(isMemberS X (cdr S))
			)
		)
	)
)	
;===============================================================
;2.KONSTRUKTOR
;(a)KonsLo:list of list => list of list
; KonsLo(L S)membentuk sebuah list baru dengan list yang diberikan menjadi elemen pertama list of list: L o S => S'
(defun KonsLo (L S)
	(cons L S)
)

;(b)KonsLdot :list of list => list of list
;KonsLdot(S L)diberikan sebuah list baru dengan list yangdiberikan menjadi elemen terakhir list of list: S dot L => S'
;Realisasi
(defun KonsLdot (S L)
	(reverse (cons L (reverse S)))
)
;================================================================
;3.SELEKTOR dan fungsi lain 
;(a)FirstList: List of list => List 	
;FirstList(S) Menghasilkan elemen pertama list, mungkin sebuah list atau atom 
;Realisasi
 (defun FirstList (S)    
	(car S)
) 

;(b)TailList: List of list  =>  List 
;TailList(S)Menghasilkan  "sisa" list of list S  tanpa elemen pertama list S 
;Realisasi
 (defun TailList (S)    
	(cdr S)
)

;(c)LastList: List of list  =>  List of list 
;LastList(S) Menghasilkan elemen terakhir list of list S 
;Realisasi
(defun LastList (S)    
	(car 
		(Inverse S)
	)
)

;(d)HeadList: List of list  =>  List of list
;HeadList(S)Menghasilkan "sisa" list of list tanpa elemen terakhir list
;Realisasi
(defun HeadList (S)    
	(Inverse 
		(cdr 
			(inverse S)
		)
	)
)

;(e)nbElmtS: List => integer
;nbElmtS(S)menghitung jumlah elemen list
;Realisasi
(defun   nbElmtS (S)   
	(if (null S)  0     ; basis-0     
		(+ (if  
			(atom (car S)) 1  
				(nbElmtS 
					(car S)
				)
			) 
			(nbElmtS 
				(cdr S)
			)
		)
	)
)   
;================================================================
;4. FUNGSI LAIN
;(a)MaxElmt: list --> integer
; {MaxElmt(LL)fungsi untuk mencari nilai maksimum dari list of list LL, list dengan elemen integer}
;Realisasi 
(defun Max2(L1 L2)
	(if L1 >= L2) then
		L1
	else
		L2
		
	
(defun MaxElmt (S)
	(if IsOneElmt (S) then (Basis 1)
		(if IsAtom (FirstList (S) then
			FirstList (S)
Else (rekurens)
	(if IsAtom (FirstList (S) then (First elemen adalah atom)
		Max2 (FirstList (S) Max )TailList (S))
		Else (First element adalah list)
			Max2 (Max (FirstList (S)) Max (TailList (S))))))))
)
		