/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH06E09.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
	Traversing a tree by depth-first search
	and printing each element as it is encountered
******************************************************************************/

domains
  treetype = tree(string, treetype, treetype) ; empty() %deklarasi tree diikuti oleh 3 argumen objek jamak tunggal

predicates
  traverse(treetype) - procedure (i) %treetype is traverse

clauses
  traverse(empty). %Empty  is traverse

  traverse(tree(Name,Left,Right)):- %Name tree, kiri, kanan
	write(Name,'\n'),	%Name dicetak
	traverse(Left), %left is traveler
	traverse(Right). %right is traerse

goal
%daftar argument
  traverse(tree("Cathy",
	   tree("Michael",
	   tree("Charles", empty, empty),
	   tree("Hazel", empty, empty)),
	   tree("Melody",
	   tree("Jim", empty, empty),
	   tree("Eleanor", empty, empty)))).