--film tablosunda bulunan rental_rate sütunundaki değerlerin ortalaması nedir?
select avg(rental_rate) "Average" from film ;

--film tablosunda bulunan filmlerden kaç tanesi 'C' karakteri ile başlar?
select count(*) "Toplam" from film where title like 'C%' ;  -- veya 
select count(title) "Toplam" from film where title like 'C%' ; -- aynı sonucu verecektir.

--film tablosunda bulunan filmlerden rental_rate değeri 0.99 a eşit olan en uzun (length) film kaç dakikadır?
select max(length) "Max_Length" from film where rental_rate=0.99 ;

--film tablosunda bulunan filmlerin uzunluğu 150 dakikadan büyük olanlarına ait kaç farklı replacement_cost değeri vardır?
select count(distinct replacement_cost) "Sonuç" from film where length>150 ;
 