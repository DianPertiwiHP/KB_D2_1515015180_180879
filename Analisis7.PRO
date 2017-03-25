/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH04E08.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

predicates
  friend(symbol,symbol) - nondeterm (i,o)
  girl(symbol) - nondeterm (i)
  likes(symbol,symbol) - nondeterm (i,i)

clauses
  friend(bill,jane):-	%bill teman jane jika
	girl(jane),	%jane adalah wanita dan
	likes(bill,jane)!., %bill menyukai jane <cegah lacakbalik> dan
  friend(bill,jim):-	%bill teman jim jika
	likes(jim,baseball),!. %jim menyukai baseball dan <cegah lacakbalik>
  friend(bill,sue):-	%bill teman sue jika
	girl(sue).	%sue adalah wanita

  girl(mary).	%mary adalah wanita
  girl(jane).	%jane adalah wanita
  girl(sue).	%sue adalah wanita

  likes(jim,baseball). %jim menyukai baseball
  likes(bill,sue).	%bill menyukai sue

goal
  friend(bill,Who).	%bill adalah teman siapa
