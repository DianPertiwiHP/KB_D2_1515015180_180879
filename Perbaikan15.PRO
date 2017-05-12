/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH07E06.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

domains
  namelist = name* %deklarasi list yang mengandung element name
  name = symbol %deklarasi name yang bertipe symbol

predicates
  member(name,namelist) - nondeterm (i,i) %pendeklarasian predikat member dengan 2 element yaitu name dan namelist

clauses
  member(Name,[Name|_]). %Name member, ekuivalen name dan semua yang dicocokan terlebih dahulu
  member(Name,[_|Tail]):- %Name member dan semua ekuivalen dengan Tail jika
	member(Name,Tail). %Name member Tail

goal
  member(susan,[ian,susan,john]).%output berupa yes karena menurut deklarasi diatas member (Name,[Name|_])