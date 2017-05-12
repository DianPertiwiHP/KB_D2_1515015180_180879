/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH07E08.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

domains
  name,address = string %deklarasi name, address dengan tipe string
  age = integer	%deklarasi age dengan tipe integer
  list = age* %deklarasi list yang mengandung element age 

predicates
  person(name,address,age) - nondeterm (o,o,o) %deklarasi predicate person dengan diikuti oleh 3 argument objek jamak tunggal yaitu name,address,age
  sumlist(list,age,integer) - procedure (i,o,o) %deklarasi predicate sumlist dengan diikuti oleh 3 argument
  run - procedure () %deklarasi run
   
clauses
  sumlist([],0,0). %list kosong,0,0 dari sumlist
  sumlist([H|T],Sum,N):- %memisah head dan tail,Sum, N dari sumlist jika
	sumlist(T,S1,N1), %T sumlist S1,N1 dan
	Sum=H+S1, N=1+N1. %Sum=H+S1 dan N=1+N1
%arguments
  person("Sherlock Holmes", "22B Baker Street", 42).
  person("Pete Spiers", "Apt. 22, 21st Street", 36).
  person("Mary Darrow", "Suite 2, Omega Home", 51).

  run:- %run jika
	findall(Age,person(_, _, Age),L), %findall(Age, person(name,address,age), L) dan
	sumlist(L,Sum,N),		%sumlist (list,age,integer)
	Ave = Sum/N, 	%Ave=Sum/N
	write("Average=", Ave),nl. %mencetak Average

goal
  run.
