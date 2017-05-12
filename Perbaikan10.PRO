/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH07E01.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

domains
  list = integer* %deklarasi domain dengan tipe integer

predicates
  write_a_list(list) - procedure (i) %deklarasi predicates list write_a_list dgn procedure input

clauses
  write_a_list([]). %jika daftar kosong, tidak dapat melakukan ulang lagi

  write_a_list([H|T]):- %mencetak H atau T dengan mencocokannya dahulu,jika /* Match the head to H and the tail to T, then... */
	write(H),nl,	%mencetak H , baris baru
	write_a_list(T).%mencetak list T

goal
  write_a_list([1,2,3]).
