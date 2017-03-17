domains 
 pelajaran, nama, nilai = symbol 
predicates 
 nondeterm mata_kuliah(pelajaran,nama,nilai)
 
clauses
 mata_kuliah(kb,irfan,a). %kb adalah mata_kuliah yang diambil irfan dan ia mendapatkan nilai a
 mata_kuliah(kb,komeng,d). %kb adalah mata_kuliah yang diambil komeng dan ia mendapatkan nilai d
 mata_kuliah(kb,dati,c). %kb adalah mata_kuliah yang diambil dati dan ia mendapatkan nilai c
 mata_kuliah(kb,fatima,b). %kb adalah mata_kuliah yang diambil fatima dan ia mendapatkan nilai b
 mata_kuliah(kb,maspion,c). %kb adalah mata_kuliah yang diambil maspion dan ia mendapatkan nilai c
 	mata_kuliah(pde,ricky,e). %pde adalah mata_kuliah yang diambil ricky dan ia mendapatkan nilai e
 	mata_kuliah(pde,embang,a).%pde adalah mata_kuliah yang diambil embang dan ia mendapatkan nilai a
 	mata_kuliah(pde,salmin,d). %pde adalah mata_kuliah yang diambil salmin dan ia mendapatkan nilai d
 	mata_kuliah(pde,vina,b). %pde adalah mata_kuliah yang diambil vina dan ia mendapatkan nilai b
 	mata_kuliah(pde,sondang,c). %pde adalah mata_kuliah yang diambil sondang dan ia mendapatkan nilai c
 mata_kuliah(so,pamuji,d). 	%so adalah mata_kuliah yang diambil pamuji dan ia mendapatkan nilai d
 mata_kuliah(so,luki,e).	%so adalah mata_kuliah yang diambil luki dan ia mendapatkan nilai e
 mata_kuliah(so,sadek,b). 	%so adalah mata_kuliah yang diambil sadek dan ia mendapatkan nilaib
 mata_kuliah(so,yusida,a).	%so adalah mata_kuliah yang diambil yusida dan ia mendapatkan nilai a
 mata_kuliah(so,eka,a).		%so adalah mata_kuliah yang diambil eka dan ia mendapatkan nilai a
 
goal
mata_kuliah(kb,Orang,_);nl,	%kb adalah matakuliah yang diambil orang dengan semua nilai yang ada
mata_kuliah(_,Tidak_lulus,d); mata_kuliah(_,Tidak_lulus,e);nl, %semua mata_kuliah yang Tidak_lulus dan mendapat nilai d atau tidak lulus dan mendapat nilai e
mata_kuliah(_,Yang_lulus,a); mata_kuliah(_,Yang_Lulus,b); mata_kuliah(_,Yang_lulus,c);nl, %pelajaran matakuliah yang lulus dan mendapat nilak A atau nilai B
mata_kuliah(Pelajaran,_,_);nl, %pelajaran matakuliah untuk semua orang dan nilai adalah
mata_kuliah(_,Nama,_).		%semua matakuliah dengan nama dan semua  nilai yang ada
  