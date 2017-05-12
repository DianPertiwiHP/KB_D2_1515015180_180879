/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH12E08.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

domains
  list = integer* %deklarasi domain list dengan tipe list integer

predicates
  readlist(list) - procedure (o) %deklarasi readlist dengan argument berupa list
  run - procedure () %deklarasi run untuk menjalankan program

clauses
  readlist([H|T]):- %readlist memiliki list berupa H dan T jika
	write("> "),	%mencetak  > dan
	readint(H),!,	%H merupakan bagian dari readint dan melakukan cut pada lacakbalik
	readlist(T). 	%T merupakan bagian dari readlist
  readlist([]).	%readlist memiliki list kosong

  run:-	%run jika
	write("*************** Integer List *****************"),nl, %mencetak kata didalam tanda petik, baris baru
	write(" Type in a column of integers, like this:"),nl,	%mencetak kata didalam tanda petik, baris baru
	write("  integer (press ENTER)\n  integer (press ENTER)\n"),	%mencetak kata didalam tanda petik, baris baru
	write("  etc.\n\n Type X (and press ENTER) to end the list.\n\n"),	%mencetak kata didalam tanda petik, baris baru
	readlist(TheList),nl,	%Thelist didalam readlist merupakan simbol yang sama dgn  readlist([H|T])
	write("The list is: ",TheList). %mencetak The list is: dan TheList didapat dari deklarasi diatasnya

goal %tujuan
	run,nl.