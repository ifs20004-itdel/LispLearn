; Nama : Josua Gaolus Nainggolan
; NIM  : 11S19045
; Nama file  tipePecahan_045.lsp

;======================================
; Definisi dan spesifikasi KONSTRUKTOR:
; Nama fungsi makePoint(a,b)
; makePoint:: 2 real --> point
; makePoint(x,y) membentuk sebuah point P dari x dan y, dengan x adalah absis dan y ordinat.
; Realisasi:
(defun makep (a b)
	(cons a(cons b nil))
)
;======================================
; Definisi dan spesifikasi SELEKTOR:
; Nama fungsi pemb(P)
; pemb:: point --> real
; pemb(P) mengembalikan nilai pembilang dari pecahan P.

; Nama fungsi peny(P)
; peny:: point --> real
; peny(P) mengembalikan nilai penyebut dari pecahan P.
; Realisasi:

(defun pemb (P)
	(car P)
)
(defun peny (P)
	(car (cdr P))
) 	
;=====================================
; Definisi dan spesifikasi PREDIKAT:

; Nama fungsi isEqp(P1 P2)
; isEqp:: point --> boolean
; isEqp(P1 P2) untuk membandingkan apakah pecahan sama nilai nya
; Realisasi:

(defun isEqp (P1 P2)
(= (* (pemb P1)(peny P2) (*(pemb P2)(peny P1)))))		

; Nama fungsi isLtp(P1 P2)
; isLtp:: point --> boolean
; isLtp(P1 P2) untuk membandingkan, apakah P1 lebih kecil dari P2
; Realisasi:
(defun isLtp (P1 P2)
(< (*(pemb P1)(peny P2) (*(pemb P2)(peny P1)))))
;=====================================
;Definisi dan Spesifikasi OPERATOR 

;Nama fungsi addP(P1 P2)
; addP:: pecahan --> pecahan 
; addP(P1 P2)  untuk menambahkan dua pecahan, (P1 + P2)
 
;Nama fungsi subP(P1 P2)
; subP:: pecahan --> pecahan 
; subP(P1 P2)  untuk mengurangkan dua pecahan, (P1 - P2)

;Nama fungsi mulP(P1 P2)
; mulP:: pecahan --> pecahan 
; mulP(P1 P2)  untuk mengalikan dua pecahan, (P1 * P2)

;Nama fungsi divP(P1 P2)
; divP:: pecahan --> pecahan 
; divP(P1 P2)  untuk membagikan dua pecahan, (P1 / P2)
;Realisai:
(defun addP(P1 P2)
	(makep(+(*(pemb P1)(peny P2))(*(pemb P2)(peny P1)))(*(peny P1)(peny P2))))

(defun subP(P1 P2)
	(makep(-(*(pemb P1)(peny P2))(*(pemb P2)(peny P1)))(*(peny P1)(peny P2))))

(defun mulP(P1 P2)
	(makep(*(pemb P1)(pemb P2))(*(peny P1)(peny P2))))
	
(defun divP (P1	P2)
	(/(*(pemb P1)(peny P2))(*(pemb P2)(peny P1))))
 	


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 