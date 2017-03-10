PREDICATES
nondeterm anak(STRING,STRING)
nondeterm istri(STRING,STRING)
nondeterm pria(STRING)
nondeterm wanita(STRING)
nondeterm ayah(STRING,STRING)
nondeterm ibu(STRING,STRING)
nondeterm cucu(STRING,STRING)
nondeterm kakek(STRING,STRING)
nondeterm adik(STRING,STRING)
nondeterm usia(STRING,INTEGER)

CLAUSES
anak("Jhon","James").  %jhon adalah anak James
anak("James","Peter"). %james adalah anak Peter
anak("Sue","Ann").	%sue adalah anak Ann
	istri("Mary","Peter").	%mary adalah istri dari Peter
	istri("Ann","James").	%Ann adalah istri dari James
pria("Jhon").		%Jhon adalah seorang pria
pria("James").		%James adalah pria
pria("Peter").		%Peter adalah seorang pria
	wanita("Mary").		%mary adalah seorang wanita
	wanita("Sue").		%Sue adalah seorang wanita
	wanita("Ann").		%Ann adalah seorang wanita
usia("Jhon",10).	%Jhon berusia 10 tahun
usia("Sue",13).		%Sue berusia 13 tahun
 
ayah(A,B):-anak(B,A). %A ayah B jika B anak A
kakek(A,B):-ayah(A,C), ayah(C,B). %A kakek B jika A adalah ayah dari C dan C adalah ayah dari B
ibu(A,B):-istri(B,C), anak(A,C). %A adalah ibu B jika B istri C dan A adalah anak dari C
cucu(A,B):-anak(A,C), anak(C,B). %A cucu B jika A anak C dan C adalah anak B
cucu(A,B):-anak(A,C), istri(C,D), anak(D,B). %A cucu dari B jika A adalah anak dari C dan C adalah istri dari D dan D anak dari B
adik(A,B):-usia(A,C), usia(B,D), C<D. %A adik dari B jika A berusia sama dengan C dan usia B samadengan D, dan usia C lebih muda dari D
 

GOAL
%cucu(X,Z).
%ibu(X,Z).
adik(R,Z).
%kakek(X,Y).