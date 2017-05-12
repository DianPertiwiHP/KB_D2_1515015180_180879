/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH07E05.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

domains
  list = integer* %deklarasi list yang mengandung element bertipe integer

predicates
  discard_negatives(list,list) - procedure (i,o) %pendeklarasian predikat discard_negatives dengan 2 element list

clauses
  discard_negatives([],[]). %list kosong dari discard_negatives

  discard_negatives([H|T],ProcessedTail):- %H ekivalen dengan T pada discard_negatives dan ProcessedTail jika
	H < 0,				%H kurang dari 0 dan /* If H is negative, just skip it */
	!,		%cegah lacakbalik
	discard_negatives(T, ProcessedTail). %T discard_negatives ProcessedTail

  discard_negatives([H|T],[H|ProcessedTail]):- %%memisah H dan T dan memisah H dan ProcessedTail dari daftar discard_negatives jika 
	discard_negatives(T, ProcessedTail). % T discard_negatives ProcessedTail

goal
  discard_negatives([2,-45,3,468],X). %X menghasilkan [2,3,468] karena pada deklarasi,jika H<0 maka akan dihentikan
