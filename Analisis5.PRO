/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH04E05.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

predicates
  type(symbol,symbol) - nondeterm (o,i)
  is_a(symbol,symbol) - nondeterm (o,i)
  lives(symbol,symbol) - nondeterm (i,i)
  can_swim(symbol) - nondeterm (o)

clauses
  type(ungulate,animal). %ungulate adalah type animal
  type(fish,animal).	%fish adalah type animal

  is_a(zebra,ungulate).	%zebra adalah ungulate
  is_a(herring,fish).	%herring adalah fish
  is_a(shark,fish).	%shark adalah fish

  lives(zebra,on_land). %zebra hidup di darat
  lives(frog,on_land).	%frog hidup di darat
  lives(frog,in_water). %frog hidup di air
  lives(shark,in_water). %shark hidup di air

  can_swim(Y):-		%Y bisa berenang, jika
	type(X,animal), %xX adalah binatang dan
	is_a(Y,X),	%Y adalah X
	lives(Y,in_water). %Y hidup di air

goal
  can_swim(What),	%Apa yang bisa berenang dan
  write("A ",What," can swim\n"). %tulis(A "apa" can_swim)
