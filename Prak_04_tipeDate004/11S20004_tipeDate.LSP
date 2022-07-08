;Nama		: Samuel I.H. Sibuea
;NIM		: 11S20004
;Nama file	: 11S20004_tipeDate.lsp


;=========================================
;Definisi dan spesifikasi Kosntruktor:
;Nama fungsi makeDate (DD,MM,YY)
;makeDate:: 3 integer --> list, string
;makeDate: Melakukan pengecekan pada date yang dibentuk dari tanggal DD, bulan MM, dan tahun YY
;Realisasi:
(defun makeDate(DD MM YY)
    (cond 
        ((and (> DD 29) (= MM 2) (= (mod YY 4) 0)) (format t "Tanggal tidak nyata"))
        ((and (> DD 28) (= MM 2) (/= (mod YY 4) 0)) (format t "Tanggal tidak nyata"))
        ((> MM 12) (format t "Tanggal tidak nyata"))
        ((and (or (= MM 4) (= MM 6) (= MM 9) (= MM 11)) (> DD 30)) (format t "Tanggal tidak nyata"))
        ((and (or (= MM 1) (= MM 3) (= MM 5) (= MM 7) (= MM 8) (= MM 10) (= MM 12)) (> DD 31)) (format t "Tanggal tidak nyata"))
        ((or (< DD 1) (< MM 1) (< YY 1)) (format t "Tanggal tidak nyata"))
        (t (cons DD (cons MM (cons YY nil))))
    )
)


;===========================================
;Definisi dan spesifikasi Selektor
;Nama fungsi Day(D)
; Day:: integer --> natural
; Day(D) mengembalikan nilai hari (DD) dari DATE D.
(defun Day(D)
    (car D))
; Nama fungsi Month(D)
; Month:: integer --> natural
; Month(P) mengembalikan nilai bulan (MM) dari Date D.
; Realisasi:
(defun Month(D)
    (car (cdr D)))
; Nama fungsi Year(D)
; Year:: integer --> natural
; Year(P) mengembalikan nilai tahun (YY) dari Date D.
; Realisasi:
(defun Year(D)
    (car (cdr (cdr D))))


;===========================================
;Definisi dan Spesifikasi dari Operator
;Nama fungsi nextDay(D)
;nextDay:: list-->list
;nextDay(D) untuk menentukan tanggal berikutnya dari D. Harus diperhatikan jumlah hari pada setiap bulan dan juga memperhatikan tahun kabisat.
;Realisasi:
(defun nextDay(D)
    (cond 
        ((and (= (Day D) 28) (= (Month D) 2) (= (mod (Year D) 4) 0)) (cons (+ (Day D) 1) (list (Month D) (Year D))))
        ((and (= (Day D) 29) (= (Month D) 2) (= (mod (Year D) 4) 0)) (cons (- (Day D) 28) (list (+ (Month D) 1) (Year D))))
        ((and (= (Day D) 28) (= (Month D) 2) (/= (mod (Year D) 4) 0)) (cons (- (Day D) 27) (list (+ (Month D) 1) (Year D))))
        ((and (or (= (Month D) 1) (= (Month D) 3) (= (Month D) 5) (= (Month D) 7) (= (Month D) 8) (= (Month D) 10)) (= (Day D) 31)) 
            (cons (- (Day D) 30) (list (+ (Month D) 1) (Year D))))
        ((and (or (= (Month D) 4) (= (Month D) 6) (= (Month D) 9) (= (Month D) 11)) (= (Day D) 30)) 
            (cons (- (Day D) 29) (list (+ (Month D) 1) (Year D))))
        ((and (= (Day D) 31) (= (Month D) 12) (Year D)) (cons (- (Day D) 30) (list (- (Month D) 11) (+ (Year D) 1))))
        (t (cons (+ (Day D) 1) (list (Month D) (Year D))))
    )
)
;Nama fungsi yesterday(D)
;yesterday:: list-->list
;yesterday(D) untuk menentukan tanggal sebelumnya dari D
;Realisasi:
(defun yesterday(D)
    (cond 
        ((and (= (Day D) 1) (= (Month D) 3) (= (mod (Year D) 4) 0)) (cons (+ (Day D) 28) (list (- (Month D) 1) (Year D))))
        ((and (= (Day D) 29) (= (Month D) 2) (= (mod (Year D) 4) 0)) (cons (- (Day D) 1) (list (Month D) (Year D))))
        ((and (= (Day D) 1) (= (Month D) 3) (/= (mod (Year D) 4) 0)) (cons (+ (Day D) 27) (list (- (Month D) 1) (Year D))))
        ((and (or (= (Month D) 2) (= (Month D) 4) (= (Month D) 6) (= (Month D) 8) (= (Month D) 9) (= (Month D) 11)) (= (Day D) 1)) (cons (+ (Day D) 30) (list (- (Month D) 1) (Year D))))
        ((and (or (= (Month D) 5) (= (Month D) 7) (= (Month D) 10) (= (Month D) 12)) (= (Day D) 1)) (cons (+ (Day D) 29) (list (- (Month D) 1) (Year D))))
        ((and (= (Day D) 1) (= (Month D) 1) (Year D)) (cons (+ (Day D) 30) (list (+ (Month D) 11) (- (Year D) 1))))
        (t (cons (- (Day D) 1) (list (Month D) (Year D))))
    )
)

;=============================================
;Definisi dan spesifikasi Predikat
;Nama fungsi isEqD(D1 D2)
;isEqD:: list--> string
;isEqD(D1 D2) untuk membandingkan, apakah kedua DATE sama.
;Realisasi:
(defun isEqD (D1 D2)
    (cond 
        ((and (= (Day D1) (Day D2)) (= (Month D1) (Month D2)) (= (Year D1) (Year D2))) 'True)
        (t 'False)
    )
)
;Nama fungsi isBefore(D1 D2)
;isBefore:: list--> string
;isBefore(D1 D2) untuk mengembalikan nilai TRUE jika D1 adalah hari sebelum D2
;Realisasi:
(defun isBefore (P1 P2)
	(cond ((or (< (day P1) (day P2) ) (or (< (month P1) (month P2)) (< (year P1) (year P2))))'True)
		(t 'False)
	)
)