/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH06E01.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

predicates
  country(symbol) - nondeterm (o) %pendeklarasian predikat country dengan tipe symbol
  print_countries - procedure () %pendeklarasian predikat print_countries

clauses
%arguments
  country("England"). %England is country
  country("France"). %France is country
  country("Germany"). %Germany is country
  country("Denmark"). %Denmark is country

  print_countries:- % print_countries jika
	country(X), % X adalah country
	write(X),    %write the value of X 
	nl,              /* start a new line */
	fail. %memaksa lacakbalik jika ada panggilan yang gagal
  print_countries. 

goal
  print_countries. %tujuan
