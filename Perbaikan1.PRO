/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH05E01.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

domains
  person                 = person(name,address) %functor person diikuti oleh 2 argumen yaitu (name, address)
  name                   = name(first,last)	%functor name diikuti oleh 2 argumen yaitu(first, last. functor hanya nama yang mengidentifikasi jenis data object jamak 
  address                = addr(street,city,state)%functor addr diikuti oleh 3 argumen yaitu (street, city, state)
  street                 = street(number,street_name)%functor street diikuti oleh 2 argumen (number, street_name)
  city,state,street_name = string  %city,state,street_name memiliki tipe string
  first,last             = string %first, last memiliki tipe string
  number                 = integer %number memiliki tipe integer

goal
  P1 = person(name("jim","mos"),addr(street(5,"1st st"),"igo","CA")), %person(name(first last), addr(street(number,street_name),city,state))
  P1 = person(name(_,"mos"),Address),  %person (name(semua, mos), Address(addr(street,city,state))
  P2 = person(name("jane","mos"),Address),%%person (name(first, last), Address(addr(street,city,state)))
  write("P1=",P1),nl, %output P1-P2 
  write("P2=",P2),nl.%output P2-P2