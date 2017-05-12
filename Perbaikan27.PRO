/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH13E01.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

domains
  charlist = char* %deklarasi domain charlist dengan list bertipe char

predicates
  string_chlist(string,charlist) - determ (i,o) %deklarasi predicate string_chlist dgn argument jamak tunggal string dan charlist

clauses
  string_chlist("", []):-!. % apa saja isi string_chlist  dan list kosong jika dilakukan cut
  string_chlist(S, [H|T]):-	%S string_chlist dgn list H dan T jika
	frontchar(S,H,S1), 	%S frontchar H dan S1 dan
	string_chlist(S1,T).	%S1 string_chlist T

goal
  string_chlist("ABC",Z). %output berupa Z= ['A','B','C']
