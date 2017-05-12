/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH05E04.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

domains
  articles            = book(title, author) ;%functor book diikuti oleh 2 argumen yaitu title, author
			horse(name) ; boat ; %functor horse diikuti olehargumen name
			bankbook(balance) %bankbook balance atau real
  title, author, name = symbol %fungsi title, autor, name bertipe symbol 
  balance             = real %fungsi balance bertipe real

predicates
  owns(name,articles) - nondeterm (i,o) %pendeklarasian predikat owns dengan argumen name dan articles dari domains

clauses
  owns(john,book("A friend of the family","Irwin Shaw")). %owns(name,articles)
  								   % articles= book(title, author)
  		%john owns A friend of the family book Irwin Shaw
  owns(john,horse(blacky)). %john owns blacky horse
  owns(john,boat).	%john owns boat
  owns(john,bankbook(1000.0)). %john owns 1000 bankbook


goal
  owns(john,Thing). %john punya sesuatu
	