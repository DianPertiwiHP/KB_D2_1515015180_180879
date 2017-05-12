/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH12E06.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

facts
  person(string,integer,real) %deklarasi fact person dgn tipe string, integer, dan real

predicates
  run - procedure () %predicate run

clauses
%fakta-fakta
  person("Pete Ashton",20,11111.111).
  person("Marc Spiers",32,33333.333).
  person("Kim Clark",28,66666.666).

  run:- %run jika
	person(N, A, I), %person mengandung (N, A, I), dimana  N,A,I didapat dari writef
	writef("Name= %-15, Age= %2, Income= $%9.2f \n",N,A,I), %writef have
	%Name memiliki minimal 15 karakter
	%Age memiliki 2 karakter
	%Income memiliki 9 karakter dgn 2 angka desimal
	% N,A,I sebagai simbol untuk memanggil person
	fail %memaksa lacak balik
	;
	true.

goal
  run.