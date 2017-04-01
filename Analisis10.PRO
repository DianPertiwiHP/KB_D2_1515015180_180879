/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH04E14.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

predicates
  action(integer) - procedure (i) %action bertipe integer

clauses
  action(1):-!,		% jika action=1 
	nl,		%enter
	write("You typed 1.").%terdapat output You typed 1.
  action(2):-!,		% jika pilih action=2
	nl,	%enter
	write("You typed two.").%terdapat output You typed 1.
  action(3):-!, % jika pilih action=3
	nl,%enter
	write("Three was what you typed."). %terdapat output You typed 3.
  action(_):-nl, %jika _ maka
	write("I don't know that number!").%output I don't know that number!

goal
  write("Type a number from 1 to 3: "),
  readint(Num), %membaca tipe int
  action(Num),nl. 
