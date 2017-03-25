/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH04E06.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

domains
  name = symbol

predicates
  father(name,name) - nondeterm (o,o)
  everybody - procedure ()

clauses
  father(leonard,katherine). %leonard adalah ayah katherine
  father(carl,jason).	%carl adalah ayah jason
  father(carl,marilyn).	%carl adalah marilyn 
  everybody:-		%semua orang jika
	father(X,Y),	%X adalah ayah Y
	write(X," is ",Y,"'s father\n"), %menulis nilai(X adalah Y 's father<enter>)
	fail.		%digunakan untuk memaksa kegagalan dari setiap orang
  everybody.

goal
  everybody. %setiap orang