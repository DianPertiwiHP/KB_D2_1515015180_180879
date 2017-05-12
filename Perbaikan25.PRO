/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH12E01.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

domains
  integerlist = integer* %deklarasi integerlist dengan tipe list yaitu integer
  namelist    = symbol*	%deklarasi namelist dengan list bertipe symbol

predicates
  writelist(integerlist) - procedure (i) %integerlist di writelist
  writelist(namelist) - procedure (i) %namelist di writeist

clauses
  writelist([]). %list kosong di writelist
  writelist([H|T]):-	%H dan T dilist writelist jika
	write(H, " "),	%H write apasaja
	writelist(T).	%T writelist

goal
  writelist([1,2,3,4]),nl. %writelist menghasilkan output yaitu 1,2,3,4karena dalam clause 
  		%telah dijelaskan bahwa write(H, " ")dan writelist(T).