/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH06E08.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

predicates
  factorial(unsigned,real) - procedure (i,o) %pendeklarasian factorial dengan tipe unsigned dan real
  factorial(unsigned,real,unsigned,real) - procedure (i,o,i,i) %pendeklarasian factorial dengan tipe unsigned,real,unsigned dan real

/* Numbers likely to become large are declared as reals. */

clauses
  factorial(N,FactN):- %N factorial dari FactN jika
	factorial(N,FactN,1,1.0). %N factorialFactN, 1 dan 1.0

  factorial(N,FactN,N,FactN):-!. %N factorial FactN,N dan FactN mencegah lacakbalik
  factorial(N,FactN,I,P):-	%N factorial FactN. I dan P jika
	NewI = I+1,		%NewI= I+1 dan
	NewP = P*NewI,		%NewP=P*NewI dan
	factorial(N, FactN, NewI, NewP). %N factorial FactN, NewI dan NewP

goal
  factorial(3,X). %3 factorial X
