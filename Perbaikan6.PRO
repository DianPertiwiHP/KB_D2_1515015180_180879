/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH06E03.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
	Recursive program to compute factorials.
	Ordinary recursion, not tail recursion.
******************************************************************************/

predicates
  factorial(unsigned,real) - procedure (i,o) %pendeklarasian factorial dengan tipe unsigned dan real

clauses
  factorial(1,1.0):-!. %1 factorial dari 1.0 cut/mencegah lacakbalik

  factorial(X,FactX):- %X factorial FactY jika
	Y=X-1,	%Y=X-1 dan
	factorial(Y,FactY), %Y factorial dari FactY dan
	FactX = X*FactY. % FactX= X*FactY

goal
  X=3, %X = 3 dan
  factorial(X,Y). %X factorial Y
