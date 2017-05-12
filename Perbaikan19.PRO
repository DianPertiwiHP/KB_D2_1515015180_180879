/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH09E01.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

predicates
  person(integer,symbol) - nondeterm (i,o)%deklarasi predicate person dengan diikuti oleh 2 argument objek jamak tunggal yaitu integer dan symbol
  rand_int_1_5(integer) - procedure (o)%deklarasi predicate rand_int_1_5 dengan tipe integer
  rand_person(integer) - nondeterm (i)%deklarasi predicate rand_person dengan tipe integer

clauses
  person(1,fred). %1 person bernama fred
  person(2,tom). %2 person bernama tom
  person(3,mary). %3 person bernama mary
  person(4,dick). %4 person bernama dick
  person(5,george). %5 person bernama george

  rand_int_1_5(X):- % X adalah rand_int_1_5 jika
	random(Y), %Y adalah random dan
	X=Y*4+1. %X= Y*4+1

  rand_person(0):-!. %jika rand_person 0 maka diberlakukan perintah cut agar tidak terjadi lacakbalik melewati sebuah cut.

  rand_person(Count):- %Count rand_person jika
	rand_int_1_5(N), % N adalah rand_int_1_5 dan
	person(N,Name), %N person dari Name dan
	write(Name),nl, %mencetak Name
	NewCount=Count-1, %NewCount= Count-1
	rand_person(NewCount). %NewCount adalah rand_person
goal
  time(_,_,_,RandomSeed),%_ = semua kemungkinan yg terjadi
  randominit(RandomSeed),
  rand_person(3). %menampilkan hanya 3 rand_person

