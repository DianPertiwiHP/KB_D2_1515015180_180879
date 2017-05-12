/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH07E03.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

domains
  list = integer* %deklarasi list yang mengandung element bertipe integer 
  			/* or whatever type you want to use */

predicates
  length_of(list,integer,integer) - procedure (i,o,i) %pendeklarasian predikat length_of dengan list didapat dari deklarasi doma

clauses
  length_of([], Result, Result). %list kosong dari lenght_of hasil, hasil
  length_of([_|T],Result,Counter):- %semua masukan length_of ekivalen dengan T, hasil, dan pencacah
	NewCounter = Counter + 1, %NewCounter= Counter+1
	length_of(T, Result, NewCounter). %T length_of Result dan NewCounter

goal
  length_of([1,2,3],L,0). /* start with Counter = 0 */% list yang mengandung integer 1, 2 dan 3
  						%array dimulai dari 0, karena ada 3 angka maka array=2
  						%L=2+1=3