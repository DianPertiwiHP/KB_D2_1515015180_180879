/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH12E07.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

domains
  person = p(name, age, telno, job) %deklarasi person dengan argument objek p(name, age, telno, job) 
  age = integer		%deklarasi ege dengan tipe integer
  telno, name, job = string	%deklarasi telno, name, job dengan tipe string

predicates
  run - procedure () %deklarasi run untuk mengekekusi program

clauses
  run:- 	%run jika
      write("Which name ? "), readln(Name), %mencetak Which name ? dan 
      					%membaca readln (Name), dimana Name diperoleh dari deklarasi domains
      write("Job ? "), readln(Job), %mencetak Job ? dan
      					%membaca readln (Job)
      write("Age ? "), readint(Age),%mencetak Age ? dan
      					%membaca readlnt (Age)
      					%menggunakna readint karena Age bertipe integer
      write("Telephone no ? "), readln(Telno), %mencetak Telephone no ? dan
      					%membaca readln (Telno)
      P=p(Name,Age,Telno,Job), %P menghasilkan nilai dari deklarasi domains
      write(P),nl,	%mencetak P dan ganti baris baru
      write("Is this compound object OK (y/n)"),	%mencetak Is this compound object OK (y/n)
      readchar(Ch),nl,Ch='y', !. %membaca karakter Ch, dan CH= y jika memenuhi fakta tersebut maka dilakukan cut

  run :-	%run jika
	 nl,nl, %baris baru
	 write("Alright, try again"), %mencetak Alright, try again
	 nl,nl,run. %baris baru dan melakukan run ulang

goal
  run.
