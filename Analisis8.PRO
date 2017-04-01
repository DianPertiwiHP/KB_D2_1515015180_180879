/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH04E10.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

domains
  name = symbol
  gpa  = real

predicates
  honor_student(name) - nondeterm (o) %honor_student dengan argument name
  student(name,gpa) - nondeterm (o,o) %student dgn argument nama dan gpa
  probation(name) - nondeterm (i)

clauses
  honor_student(Name):- %name honor_student jika
	student(Name,GPA), %name student dan GPA  dan
	GPA>=3.5,	%GPA >=3.5 dan
	not(probation(Name)). %probation didalam clause not memiliki argumen name

  student("Betty Blue",3.5). %Betty Blue is student dgn GPA 3.5
  student("David Smith",2.0). %David Smith is student dgn GPA 2.0
  student("John Johnson",3.7). %John Johnson is student dgn GPA 3.7

  probation("Betty Blue"). %Betty Blue is probation
  probation("David Smith").%David Smith is probation

goal
  honor_student(X). %X is honor_student
	