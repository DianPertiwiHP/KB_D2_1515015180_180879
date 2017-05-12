/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH07E07.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

domains
  integerlist = integer* %deklarasi domain integerlist yang mengandung element bertipe integer

predicates
  append(integerlist,integerlist,integerlist) - procedure (i,i,o) %pendeklarasian predikat append dengan 3 element yaitu integerlist
   
clauses
  append([],List,List). %terdapat list kosong,List dan List pada append
  append([H|L1],List2,[H|L3]):- %memisahkan H dan L1, List2, H dan L3 dari daftar append, jika 
	append(L1,List2,L3). %L1,List2, L3 ada di daftar append

goal
  append([1,2,3],[5,6],L).
