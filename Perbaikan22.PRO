/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH09E03.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

predicates
  solve(real,real,real) - procedure (i,i,i)%deklarasi predicate solve diikuti oleh 3 argument objek jamak tunggal yaitu real
  reply(real,real,real) - procedure (i,i,i) %deklarasi predicate reply dengan tipe adalah real
  mysqrt(real,real,real) - procedure (i,i,o))%deklarasi predicate mysqrt diikuti oleh 3 argument objek jamak tunggal yaitu real
  equal(real,real) - determ (i,i)%deklarasi predicate equal dengan tipe adalah real

clauses
  solve(A,B,C):- %A solve B dan C jika
	 D=B*B-4*A*C,		%D=B+B-4*A*C
	 reply(A, B, D), nl.	%A reply B dan menghasilkan D, baris baru

  reply(_,_,D):-	%semua kemungkinan dan nilai D yang dapat terjadi pada reply jika
	D < 0,	%D <0 dan
	write("No solution"),!. %akan mencetak "No Solution", dan melakukan perintah cut
  reply(A,B,D):-	%A dan B reply D jika
	D=0,	%D=0 dan
	X=-B/(2*A),write("x=", X),!. %X-B/(2*A) dan
				%mencetak nilai x= X dan jika menemukan kecocokan maka perintah akan dicut
  reply(A,B,D):-	%A dan B reply D jika
	mysqrt(D,D,SqrtD), %D mysqrt dan D samadengan SqrtD
	X1=(-B+SqrtD)/(2*A), %X1=(-B+SqrtD)/(2*A),dan
	X2 = (-B - SqrtD)/(2*A), %X2 = (-B - SqrtD)/(2*A),
	write("x1 = ", X1," and x2 = ", X2). %"mencetak x1= " didalamnya ada perintah  

  mysqrt(X,Guess,Root):-	%X mysqrt B reply D jika
	NewGuess = Guess-(Guess*Guess-X)/2/Guess, %NewGuess = Guess-(Guess*Guess-X)/2/Guess dan
	not(equal(NewGuess,Guess)), !, %not equal dari NewGuess equal dan Guess dan gunakan cut untuk mencegah lacak balik
	mysqrt(X,NewGuess,Root). %X mysqrt ga ada NewGuess,Root
	mysqrt(_,Guess,Guess).	%semua kemungkinan dan guess, dan susttt
	

  equal(X,Y):-		%X equal Y jika
	 X/Y >0.99999,	%X/Y > 0.99999
	 X/Y < 1.00001.	%X/Y > 0.99999

goal
  solve(1.0,2.0,1.0).
  %solve dari 1.0=1.0