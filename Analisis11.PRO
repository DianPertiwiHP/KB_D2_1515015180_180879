/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH04E12.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

trace
domains
  name,sex,occupation,object,vice,substance = symbol %name,sex,occupation,object,vice,substance bertipe symbol
  age=integer		%age bertipe integer

predicates
  person(name,age,sex,occupation) - nondeterm (o,o,o,o), nondeterm (i,o,o,i), nondeterm (i,o,i,o)
  had_affair(name,name) - nondeterm (i,i), nondeterm (i,o)
  killed_with(name,object) - determ (i,o)
  killed(name) - procedure (o)
  killer(name) - nondeterm (o)
  motive(vice) - nondeterm (i)
  smeared_in(name,substance) - nondeterm (i,o), nondeterm (i,i)
  owns(name,object) - nondeterm (i,i)
  operates_identically(object,object) - nondeterm (o,i)
  owns_probably(name,object) - nondeterm (i,i)
  suspect(name) - nondeterm (i)

/* * * Facts about the murder * * */
clauses
%person(name,age,sex,occupation)
  person(bert,55,m,carpenter). %bert person age=55,sex=m,occupation=carpenter
  person(allan,25,m,football_player).%allan person age=25,sex=m,occupation=football_player
  person(allan,25,m,butcher).%allan person age=25,sex=m,occupation=butcher
  person(john,25,m,pickpocket).%john person age=25,sex=m,occupation=pickpocket

  had_affair(barbara,john). %barbara had_affair john
  had_affair(barbara,bert).%barbara had_affair bert
  had_affair(susan,john).%susan had_affair john

  killed_with(susan,club). %susan killed_with club
  killed(susan).	%susan killed

  motive(money).	%money is motive
  motive(jealousy).	%jealousy is motive
  motive(righteousness).%righteousness is motive

  smeared_in(bert,blood). %bert smeared_in blood
  smeared_in(susan,blood).%susan smeared_in blood
  smeared_in(allan,mud).  %allan smeared_in mud
  smeared_in(john,chocolate).%john smeared_in chocolate
  smeared_in(barbara,chocolate).%barbara smeared_in chocolate

  owns(bert,wooden_leg). %bert owns wooden_leg
  owns(john,pistol).  %john owns pistol

/* * * Background knowledge * * */

  operates_identically(wooden_leg, club). %wooden_leg operates_identically club
  operates_identically(bar, club).   %bar operates_identically club
  operates_identically(pair_of_scissors, knife).%pair_of_scissors operates_identically knife
  operates_identically(football_boot, club).	%football_boot operates_identically club

  owns_probably(X,football_boot):-	%X owns_probably football_boot jika
	person(X,_,_,football_player). %X orang _,_,football_player
  owns_probably(X,pair_of_scissors):-	%X owns_probably pair_of_scissors jika
	person(X,_,_,hairdresser).	%X orang _,_,hairdresser
  owns_probably(X,Object):-	%X owns_probably Object jika
	owns(X,Object).	%X orang _,_,Object

/* * * * * * * * * * * * * * * * * * * * * * *
 * Suspect all those who own a weapon with   *
 * which Susan could have been killed.       *
 * * * * * * * * * * * * * * * * * * * * * * */

  suspect(X):-	%X suspect jika
	killed_with(susan,Weapon) , %susan killed_with Weapon dan
	operates_identically(Object,Weapon) , %Object operates_identically Weapon
	owns_probably(X,Object).	%X owns_probable Object

/* * * * * * * * * * * * * * * * * * * * * * * * * *
 * Suspect men who have had an affair with Susan.  *
 * * * * * * * * * * * * * * * * * * * * * * * * * */

  suspect(X):-	%X suspect jika
	motive(jealousy), %jealousy is motive
	person(X,_,m,_), %X person,_,m,_
	had_affair(susan,X). %susan had_affair X

/* * * * * * * * * * * * * * * * * * * * *
 * Suspect females who have had an       *
 * affair with someone that Susan knew.  *
 * * * * * * * * * * * * * * * * * * * * */

  suspect(X):-	%X suspect jika
	motive(jealousy),%jealousy is motive dan
	person(X,_,f,_), %X person,_,f,_ dan
	had_affair(X,Man), %X had_affair Man dan
	had_affair(susan,Man). %susan had_affair Man

/* * * * * * * * * * * * * * * * * * * * * * * * * * *
 * Suspect pickpockets whose motive could be money.  *
 * * * * * * * * * * * * * * * * * * * * * * * * * * */

  suspect(X):-	%X suspect jika
	motive(money), %money is motive dan
	person(X,_,_,pickpocket). %X person _,_,pickpocket

  killer(Killer):- %Killer is killer jika
	person(Killer,_,_,_), %Killer person,_,_,_ dan
	killed(Killed), %Killed is killed
	Killed <> Killer, /* It is not a suicide */ %Killed tidak samadengan Killer
	suspect(Killer), %Killer is suspect
	smeared_in(Killer,Goo), %Killer smeared_in Goo
	smeared_in(Killed,Goo). %Killed smeared_in Goo

goal
  killer(X). %X is killer
