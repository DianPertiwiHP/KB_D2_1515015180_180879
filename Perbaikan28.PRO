/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH13E04.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

domains
  intlist = integer* %deklarasi domain intlist dengan tipe list yaitu integer

goal
  write("Input list : "),%mencetak Input list :
  readln(L),nl,	%membaca karakter dari L dan
  str_len(L,Len),  %L str_len Len dan
  write("The stringlength of ",L), %mencetak "The stringlength of" L, dimana data didapat dari readln(L)
  write(" is ",Len,'\n').%mencetak "is" baris baru

