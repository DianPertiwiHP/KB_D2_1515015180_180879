predicates
	beli(symbol,symbol,symbol)- nondeterm(o,o,o)
	orang(symbol) - nondeterm(o)
	makanan(symbol) - nondeterm(o)
	minuman(symbol) - nondeterm(o)
	menyukai(symbol,symbol,symbol) - nondeterm(i,i,i), nondeterm(o,o,i)
		
	clauses
	beli(A,X,Y):-orang(A),makanan(X),minuman(Y),menyukai(A,X,Y).
	%A membeli X,Y jika A adalah orang dan X adalah makanan dan Y adalah minuman 
	%% A menyukai X dan Y
	
	orang(rizal). %rizal adalah orang
	orang(andy).
		makanan(mie).
		makanan(sosis).
		makanan(telur).
			minuman(jus).
			minuman(kopi).
			minuman(jeruk).
	menyukai(rizal,mie,jus).
	menyukai(toni,sarden,kopi).
	menyukai(andy,sosis,teh).
	menyukai(andy,telur,jeruk).
	menyukai(cinta,sosis,susu).
		
	goal
	beli(A,Y,X),nl,
	menyukai(Orang_yangsuka_kopi,_,kopi).