/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH04E11.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

predicates
  likes_shopping(symbol) - nondeterm (o) %likes_shopping dgn tipe symbol
  has_credit_card(symbol,symbol) - nondeterm (o,o) %has_credit_card dgn symbol,symbol
  bottomed_out(symbol,symbol) - nondeterm (i,i)

clauses
  likes_shopping(Who):-  %Who Likes_shopping jika
	has_credit_card(Who,Card), %Who has_credit_card Card dan
	not(bottomed_out(Who,Card)), %who not bottomed_out card dan
	write(Who," can shop with the ",Card, " credit card.\n"). %menulis(Who can stop with the Card credit card)

  has_credit_card(chris,visa). %chris has_credit_card visa
  has_credit_card(chris,diners). %chris has_credit_card diners
  has_credit_card(joe,shell).	%joe has_credit_card shell
  has_credit_card(sam,mastercard).%sam has_credit_card mastercard
  has_credit_card(sam,citibank).%sam has_credit_card citibank

  bottomed_out(chris,diners).	%chris bottomed_out diners
  bottomed_out(sam,mastercard).%sam bottomed_out mastercard
  bottomed_out(chris,visa).%chris bottomed_out visa

goal
  likes_shopping(Who). % who likes_shoping
