



DOMAINS
	kuliah=kuliah(symbol,symbol,symbol,integer)%kuliah dengan tipe symbol,symbol,symbol,integer
	kb=ai(symbol,string,integer,symbol)	%kb dengan tipe symbol,string,integer,symbol
	pde=pde(symbol,string,integer,symbol)	%pde dengan tipe symbol,string,integer,symbol
	teknik=teknik(symbol,string,integer,symbol)%teknik dengan tipe symbol,string,integer,symbol
	
PREDICATES
	run - nondeterm()
	nondeterm jenis_kuliah(kuliah)	%jenis_kuliah dgn argument kuliah
	nondeterm intelejensi_Buatan(kb) %intelejensi_Buatan dgn argument kb
	nondeterm kuliah_pde(pde)	%kuliah_pde dgn argument pde
	nondeterm kuliah_teknik_antarmuka(teknik)	%kuliah_teknik_antarmuka dgn argument teknik
	/* Keywoard nondeterm pada section PREDICATES berfungsi untuk memberitahu ke 							       
	 compiler Visual Prolog bahwa predikat tersebut mempunyai lebih dari satu kemungkinan jawaban*/ 
	
CLAUSES
run :-
write("\t\t\t*************  MAHASIAWA YANG MENGIKUTI PERKULIAHAN  *************"),nl, %menampilkan kalimatnya di layar output,nextline(baris baru)
write("\t\t*****************************************************************************************************************************"),nl, %menampilkannya di layar output,nextline(baris baru)
write("\n"), %baris baru
write("\t\t^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"),nl. %menampilkannya di layar output,nextline(baris baru)
 %menampilkan kalimatnya di layar output
	
	jenis_kuliah(kuliah("Intelejensi Buatan","Abdul Kadir","Manajemen Informatika", 1)). %kuliah punya jenis_kuliah dimana argument didalamnya bertipe(symbol,symbol,symbol,integer)
	jenis_kuliah(kuliah("PDE","Indra Yatini","Teknik Informatika", 2)).		%kuliah punya jenis_kuliah dimana argument didalamnya bertipe(symbol,symbol,symbol,inte
	jenis_kuliah(kuliah("Teknik Antar Muka","Sigit Anggoro","Teknik Komputer", 3)).
	
	intelejensi_Buatan(ai("Sugeng Riyadi",pria,2002001,"Jl. Sudirman No.2 , Pontianak, Kalimantan Barat")). %ai punya intelejensi_Buatan dimana argument didalamnya bertipe(symbol,string,integer,symbol)
	intelejensi_Buatan(ai("Yulia Sugondo",wanita,2002002,"Jl. A. Yani No. 10 , Klaten, Jawa Tengah")).	%ai punya intelejensi_Buatan dimana argument didalamnya bertipe(symbol,string,integer,symbol)
	intelejensi_Buatan(ai("Budiman Sejati",pria,2002003,"Jl. Slamet Riyadi No. 45 , Solo, Jawa Tengah")).
	
	kuliah_pde(pde("Laksamana Sukardi",pria,2002004, "Jl. MT Haryono NO. 10, Palembang, Sumatera Selatan")). %pde punya kuliah_pde dimana argument didalamnya bertipe(symbol,string,integer,symbol)
	kuliah_pde(pde("Rini Suwandi",wanita,2002005, "Jl. Letjen Suprapto NO. 12, Surabaya, Jawa Timur")).	%pde punya kuliah_pde dimana argument didalamnya bertipe(symbol,string,integer,symbol)
	kuliah_pde(pde("Kwik Kian Gie",pria,2002006, "Jl. WR Supratman NO. 100, Makassar, Sulawesi Selatan")).
	
	kuliah_teknik_antarmuka(teknik("Riri Reza", pria, 2002007,"JL. WR Mongsidi No. 30,Purwokerto, Jawa Tengah")).%teknik punya kuliah_teknik_antarmuka dimana argument didalamnya bertipe(symbol,string,integer,symbol)
	kuliah_teknik_antarmuka(teknik("Rachel Maryam", wanita, 2002008,"JL. Otista No. 112,Bandung, Jawa Barat")).%teknik punya kuliah_teknik_antarmuka dimana argument didalamnya bertipe(symbol,string,integer,symbol)
	kuliah_teknik_antarmuka(teknik("Garin Nugroho", pria, 2002009,"JL. Tanjung Pura No. 101,Jaya Pura, Papua")).
	
GOAL
	run,
	%jenis_kuliah(kuliah("Intelejensi Buatan", Dosen,Studi, Ruang)),nl, %mahasiswa yang mengikuti matakuliah "Intelegensi Buatan"
	%intelejensi_buatan(ai(Nama,Jenis_kelamin,NIM, Alamat)),nl.
	
	jenis_kuliah(kuliah(Mata_kuliah, Dosen,_,1)),nl, 	%matakuliah apa saja yang diajarkan pada semester tersebut
	intelejensi_Buatan(ai(Nama,_,NIM,_));
	jenis_kuliah(kuliah(Mata_kuliah, Dosen,_,2)),nl,
	kuliah_pde(pde(Nama,_,NIM,_));
	jenis_kuliah(kuliah(Mata_kuliah, Dosen,_,3)),nl,
	kuliah_teknik_antarmuka(teknik(Mhs,_,NIM,_)).