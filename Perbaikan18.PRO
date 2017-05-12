/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH07E09.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

domains
  llist = l(list); i(integer); c(char); s(string) %deklarasi argument llist dengan tipe-tipe berupa list,integer,char,string
  list = llist*		%deklarasi list yang mengandung element llist 

predicates
  append(list,list,list) - procedure (i,i,o) %pendeklarasian predikat append dengan tipe list,list,list yang berasal dari domain

clauses
  append([],L,L).%list kosong dari append, L, L
  append([X|L1],L2,[X|L3]):- %memisahkan X dan L dari daftar append jika
	append(L1,L2,L3). %L1 append L2, L3

goal
  append([s("likes"), l([s("bill"), s("mary")])],[s("bill"), s("sue")],Ans),%menampilakan Ans [s("likes"), l([s("bill"), s("mary")])],[s("bill"), s("sue")]
  append([l([s("This"),s("is"),s("a"),s("list")]),s("bee")], [c('c')],Ans2). %Ans2 [s("This"),s("is"),s("a"),s("list")]),s("bee")], [c('c')]

