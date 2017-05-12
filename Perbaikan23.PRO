/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH11E05.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/
% in VDE Messages window check, which domains are treated as reference  

diagnostics  %should be placed before the start of the program text 

domains
  tree = reference t(val,tree,tree) %deklarasi tree dgn argument t(val,tree,tree)
  val  = integer %deklarasi val dgn tipe integer
  list = integer* %deklarasi list dgn list bertipe integer

predicates
  insert(integer,tree) - procedure (i,o), procedure (i,i) %deklarasi predicate insert dengan argument integer,tree
  instree(list,tree) - procedure (i,i), procedure (i,o) %deklarasi predicate instree dengan argument berupa list dan tree
  treemembers(integer,tree) - nondeterm (o,i) %deklarasi predicate treemembers dgn argumen objek jamak tunggal yaitu integer, tree
  sort(list,list) - procedure (i,o) %deklarasi predicate sort dgn argumen objek jamak tunggal yaitu list

clauses
  insert(Val,t(Val,_,_)):-!. %Val insert t(Val,_,_) jika memenuhi syarat maka dilakukan cut
  insert(Val,t(Val1,Tree,_)):- %Val insert t(Val1,Tree,_) jika
	Val<Val1,!,	%Val<Val1 dan
	insert(Val,Tree). %Val insert Tree
  insert(Val,t(_,_,Tree)):- %Val insert t(_,_,Tree) jika
	insert(Val,Tree). %Val insert Tree

  instree([],_).	% list kosong di instree dan semua fakta
  instree([H|T],Tree):-	%elemen H dan T pada instree dan Tree jika
	insert(H,Tree),	%H insert Tree dan
	instree(T,Tree).%T instree tree

  treemembers(_,T):-	%semua fakta treemember dan T jika
	free(T),!,fail. %T free maka dilakukan pencegahan lacak balik kemudian memaksakan lacak balik
  treemembers(X,t(_,L,_)):- %X treemembers t(_,L,_) jika
	treemembers(X,L).	%X treemembers L
  treemembers(X,t(Refstr,_,_)):-	%X treemembers t(Refstr,_,_) jika
	X = Refstr.	%X= Refstr
  treemembers(X,t(_,_,R)):-	%X treemebers t(_,_,R) jika
	treemembers(X,R).	%X treemebers R

  sort(L,L1):-	%L sort L1 jika
	instree(L,Tree),	%L instree Tree dan
	findall(X,treemembers(X,Tree),L1).	%X findall treemembers(X,Tree)dan L1

goal
  sort([3,6,1,4,5],L).	%sort nilai L
