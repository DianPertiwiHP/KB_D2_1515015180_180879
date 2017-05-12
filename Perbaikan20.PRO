/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH08E01.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

domains
  thing = string %deklarasi thing dgn tipe string
  conds = cond*  %deklarasi conds dgn semua tipe daro cond
  cond  = string %deklarasi cond dgn tipe string

facts
  is_a(thing,thing,conds) %deklarasi fact is_a dengan diikuti oleh 3 argument objek jamak tunggal yaitu thing,thing,conds
  type_of(thing,thing,conds)%deklarasi fact type_of dengan diikuti oleh 3 argument objek jamak tunggal yaitu thing,thing,conds
  false(cond) %deklarasi fakta false dengan argument berupa cond

predicates
  run(thing) - nondeterm (i) %deklarasi predicate run dengan diikuti argument thing dari domain
  ask(conds) - nondeterm (i) %deklarasi predicate ask dengan diikuti argument conds
  update - procedure () 	%%deklarasi predicate update

clauses
  run(Item):- %Item dijalankan, jika 
	is_a(X,Item,List), %X is_a Item dan List dan
	ask(List),	%List dikondisi ask dan
	type_of(ANS,X,List2), %ANS type_of X dan List2 dan
	ask(List2), 	%List2 ada dikondisi ask dan 
	write("The ", Item," you need is (a/an) ", Ans),nl. %mencetak "The ", Item," you need is (a/an) ", Ans
							%jika kondisi Yes
  run(_):- %menjalankan semua kondisi jika No/false
	write("This program does not have enough "), %mencetak This program does not have enough 
	write("data to draw any conclusions."),	%mencetak data to draw any conclusions.
	nl.

  ask([]). %ask dengan list kosong
  ask([H|T]):- %memisahkan head dan tail jika
	not(false(H)), %not(berarti false dan ke condisi H )
	write("Does this thing help you to "),%mencetak Does this thing help you to
	write(H," (enter y/n)"), %mencetak enter y/n jika kondisi false/ H
	readchar(Ans), nl, Ans='y', %membaca karakter (Ans), dimana Ans= y
	ask(T).		%mencari kondisi di ask jika T/yes

  ask([H|_]):- %ask ke H/false jika
	assertz(false(H)), fail. %assertz false/H

  is_a("language","tool",["communicate"]). %is_a(thing,thing,conds)
  					%jika Yes/T maka berlanjut ke type_of
  
  is_a("hammer","tool",["build a house","fix a fender","crack a nut"]). %is_a(thing,thing,conds)%jika kondisi H/no maka mencari kondisi kesamping
  is_a("sewing_machine","tool",["make clothing","repair sails"]). %is_a(thing,thing,conds) % make clothing=no,"repair sails"= yes
  is_a("plow","tool",["prepare fields","farm"]).	%is_a(thing,thing,conds)
		%jika kondisi false/no semua maka akan ke run(_)

  type_of("english","language",["communicate with people"]). %jika Yes mengarah ke run(Item)
  							%jika No maka mencari fakta  type_of dibawahnya
  type_of("prolog","language",["communicate with a computer"]). %jika no maka mengarah ke thing is_a

  update:- %update jika
	retractall(type_of("prolog","language",["communicate with a computer"])), %retractall(type_of(thing,thing,conds)
	asserta(type_of("PDC Prolog","language",
				["communicate with a personal computer"])),%asserta(type_of(thing,thing,conds)
	asserta(type_of("prolog","language",
				["communicate with a mainframe computer"])).%asserta(type_of(thing,thing,conds)

goal
  run("tool").