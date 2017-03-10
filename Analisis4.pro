/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH04E02.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

predicates
  likes(symbol,symbol) - nondeterm (i,o)
  tastes(symbol,symbol) - nondeterm (i,i)
  food(symbol) - nondeterm (o)

clauses
  likes(bill,X):- 	%bill suka X jika
	food(X), 	%X adalah makanan
	tastes(X,good). % X rasanya enak

  tastes(pizza,good). %pizza rasanya enak
  tastes(brussels_sprouts,bad). %brussels_sprouts rasanya buruk

  food(brussels_sprouts). %brussels_sprouts adalah makanan
  food(pizza).		%pizza adalah makanan

goal
  likes(bill,What). 	%bill menyukai apa
	