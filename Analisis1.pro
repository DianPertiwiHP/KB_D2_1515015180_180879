/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH03E01.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

domains
  product,sum = integer

predicates
  add_em_up(sum,sum,sum) - procedure (i,i,o)
  multiply_em(product,product,product) - procedure (i,i,o)

clauses
  add_em_up(X,Y,Sum):- % X add_em_up Y = sum jika  
	Sum=X+Y.	%sum= X+Y 
  multiply_em(X,Y,Product):- %X multiple_em Y menghasilkan Product jika
	Product=X*Y.		%Product = X*Y

goal
  add_em_up(32,54,Sum). % 32 add_em_up 54 menghasilkan Sum
