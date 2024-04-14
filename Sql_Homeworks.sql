-- ========== ODEV 6 ==========

--film tablosunda bulunan rental_rate sütunundaki değerlerin ortalaması nedir?
SELECT AVG(rental_rate) FROM film;

--film tablosunda bulunan filmlerden kaç tanesi 'C' karakteri ile başlar?
SELECT COUNT(*) FROM film
WHERE title LIKE 'C%';

--film tablosunda bulunan filmlerden rental_rate değeri 0.99 a eşit olan en uzun (length) film kaç dakikadır?
SELECT MAX(length) FROM film
WHERE rental_rate = 0.99;

--film tablosunda bulunan filmlerin uzunluğu 150 dakikadan büyük olanlarına ait kaç farklı replacement_cost değeri vardır?
SELECT COUNT(DISTINCT replacement_cost) FROM film
WHERE length > 150;

-- ========== ODEV 7 ==========

--film tablosunda bulunan filmleri rating değerlerine göre gruplayınız.
SELECT rating FROM film
GROUP BY rating;

--film tablosunda bulunan filmleri replacement_cost sütununa göre grupladığımızda film sayısı 50 den fazla olan replacement_cost 
--değerini ve karşılık gelen film sayısını sıralayınız.
SELECT replacement_cost, COUNT(*) FROM film
GROUP BY replacement_cost
HAVING COUNT(*) > 50;

--customer tablosunda bulunan store_id değerlerine karşılık gelen müşteri sayılarını nelerdir? 
SELECT store_id, COUNT(*) FROM customer
GROUP BY store_id;

--city tablosunda bulunan şehir verilerini country_id sütununa göre gruplandırdıktan 
--sonra en fazla şehir sayısı barındıran country_id bilgisini ve şehir sayısını paylaşınız.
SELECT country_id, COUNT(*) FROM city
GROUP BY country_id
ORDER BY COUNT(*) DESC;