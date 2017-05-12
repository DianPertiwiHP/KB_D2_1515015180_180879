/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH11E02.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/
diagnostics	%should be placed before the start of the program text 

predicates
  plus(integer,integer,integer) - nondeterm (i,i,o) %deklarasi predicate plus diikuti dengan 3 orgument integer
  num(integer) - nondeterm (o) %deklarasi predicate num dengan tipe integer

clauses
  plus(X,Y,Z):-
	bound(X),
	bound(Y),
	Z=X+Y. /* (i,i,o) */
  plus(X,Y,Z):- %X plus Y samadengan Z jika
	bound(Y), 	%Y bound dan
	bound(Z),	%Z bound dan
	X=Z-Y. /* (o,i,i) */	%X=Z-Y
  plus(X,Y,Z):-	%X plus Y samadengan Z jika
	bound(X),	%Y bound dan
	bound(Z),	%Z bound dan
	Y=Z-X. /* (i,o,i) */ %Y=Z-X
  plus(X,Y,Z):-	%X plus Y samadengan Z jika
	free(X),	%X free dan
	free(Y),	%Y free dan
	bound(Z),	%Z bound dan
	num(X),		%X adalah num dan
	Y=Z-X. /* (o,o,i) */	%Y =Z-X
  plus(X,Y,Z):-%X plus Y samadengan Z jika
	free(X),	%X free dan
	free(Z),	%Y free dan
	bound(Y),	%Y bound dan
	num(X),		%X adalah num dan
	Z=X+Y. /* (o,i,o) */ %Z=X+Y
  plus(X,Y,Z):-%X plus Y samadengan Z jika
	free(Y),	%Y free dan
	free(Z),	%Z free dan
	bound(X),	%X bound dan
	num(Y),		%Y adalah num dan
	Z=X+Y. /* (i,o,o) */ %Z=X+Y
  plus(X,Y,Z):-%X plus Y samadengan Z jika
	free(X),	%X free dan
	free(Y),	%Y free dan
	free(Z),	%Z free dan
	num(X),		%X adalah num dan
	num(Y),		%Y adalah num dan
	Z=X+Y. /* (o,o,o) */ %Z=X+Y

   /* Generator of numbers starting from 0 */
  num(0). %nilai num adalah 0
  num(X):- %X num jika
	num(A),	%A adalah num dan
	X = A+1. %X=A+1

goal
  plus(3,5,Z).
%hasilnya Z=8 karenapada pendeklarasian fakta diatas terdapat fakta plus(X,Y,Z)
%dan dimasing-masing fakta terdapat sebuah pendeklarasian kondisi yang digunakan unutk mencari nilai dari Z