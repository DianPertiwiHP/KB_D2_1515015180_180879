/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH06E02.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
	Uses repeat to keep accepting characters and printing them
	until the user presses Enter.
******************************************************************************/

predicates
  repeat - nondeterm () %pendeklarasian predikat berupa repeat
  typewriter - nondeterm ()%pendeklarasian predikat berupa typewriter
clauses
  repeat.
  repeat:-repeat. %repeat jika repeat

  typewriter:- %typewrite jika
	repeat, %repeat
	readchar(C),     %membaca karakter ,ikat ke variabel C */
	write(C),	%mencetak
	C = '\r'.        %Apakah ditekan Enter? Gagal jika tidak

goal
  typewriter,nl.
  