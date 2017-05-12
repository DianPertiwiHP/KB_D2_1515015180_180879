/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH07E04.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

domains
  list = integer* %deklarasi list yang mengandung element bertipe integer

predicates
  add1(list,list) - procedure (i,o)%pendeklarasian predikat add dengan tipe list,list berasal dari domain yg bertipe data integer

clauses
  add1([], []). %batas kondisi
  add1([Head|Tail],[Head1|Tail1]):- %memisah head dan tail dari daftar jika 
	Head1= Head+1,		%Head1= Head+1       /* add 1 to the first element */
	add1(Tail,Tail1). %memanggil element dari daftar add1 /* call element with the rest of the list */

goal
  add1([1,2,3,4],NewList). %menghasilkan Newlist[2,3,4,5] karena ada deklarasi argument Head1=head+1
