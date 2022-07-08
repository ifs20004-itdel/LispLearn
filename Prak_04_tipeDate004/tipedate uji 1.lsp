; Nama: Hedrin S. Sitorus
; NIM : 11S20019
; Nama File: 11S20019_tipeDate.lsp
;====================================================================================================
; Definisi dan Spesifikasi
; Day : date --> Hr
; (Day (D) memberikan hari d dari D yang terdiri dari (d,m,y))
; Month : date --> Bln
; (Month (D) memberikan bulan d dari D yang terdiri dari (d,m,y))
; Year : date --> Thn
; (Year (D) memberikan tahun y dari D yang terdiri dari (d,m,y))
; Konstruktor: 
; makeDate(DD,MM,YY), untuk membentuk DATE, dari hari DD, bulan MM, dan tahun YY.
; Selektor:
; Day(D), untuk mengembalikan nilai hari (DD) dari DATE D.
; Month(D), untuk mengembalikan nilai bulan (MM) dari DATE D.
; Year(D), untuk mengembalikan nilai tahun (YY) dari DATE D.
; Operator terhadap DATE, yaitu nextDay(D)
;
==;=====================================================================================================
;REALISASI :
Nextday (D) :
	depend on (Month(D)
		Month(D) = 1 or Month(D) = 3 or Month(D) = 5 or Month(D) = 7
		or Month(D) = 8 or Month(D) = 10: {Bulan dengan 31 hari }
			if Day(D)<31 then MakeDate(Day(D)+1,Month(D),Year(D)) 
				else MakeDate(1,Month(D)+1,Year(D))
		Month(D) = 2 : {Februari}
			if Day(D)<28 then MakeDate(Day(D)+1,Month(D),Year(D))
				else MakeDate(Day(D),Month(D)+1,Year(D))
			else if Iskabisat?(Year(D)) then
				if Day(D)=28 then MakeDate(Day(D)+1,Month(D),Year(D)) 
					else MakeDate(1,Month(D)+1,Year(D))
				else MakeDate(1,Month(D)+1,Year(D))
		Month(D) = 4 or Month(D)=6 or Month(D)=9 or Month(D) = 11: {30 hr} 
			if Day(D)<30 then MakeDate(Day(D)+1,Month(D),Year(D))
				else MakeDate(Day(D),Month(D)+1,Year(D)) 
		Month(D) = 12 {Desember}
			if Day(D)<31 then MakeDate(Day(D)+1,Month(D),Year(D)) 
				else MakeDate(1,1,Year(D)+1)
























;======================================
;REALISASI :
(defun MakeDate (D) :
	if (
		Month(D) = 1 or Month(D) = 3 or Month(D) = 5 or Month(D) = 7
		or Month(D) = 8 or Month(D) = 10; {Bulan dengan 31 hari }
			if Day(D)<31 then MakeDate(Day(D)+1,Month(D),Year(D)) 
				else MakeDate(1,Month(D)+1,Year(D))
		Month(D) = 2 ; {Februari}
			if Day(D)<28 then MakeDate(Day(D)+1,Month(D),Year(D))
				else MakeDate(Day(D),Month(D)+1,Year(D))
		Month(D) = 4 or Month(D)=6 or Month(D)=9 or Month(D) = 11; {30 hr} 
			if Day (D)<30 then MakeDate(Day(D)+1,Month(D),Year(D))
				else MakeDate(Day(D),Month(D)+1,Year(D)) 
		Month(D) = 12 ;{Desember}
			if Day(D)<31 then MakeDate(Day(D)+1,Month(D),Year(D)) 
				else MakeDate(1,1,Year(D)+1)
				)