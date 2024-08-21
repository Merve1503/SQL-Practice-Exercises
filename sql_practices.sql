-- 1) Kitaplar tablosundaki tüm kayıtları listeleyelim

SELECT * FROM kitaplar;

-- 2) Yazarlar tablosundaki yazarın adını ve soyadını listeleyin

SELECT yazar_isim, soyisim FROM yazarlar;

-- 3) Yazarlar tablosundaki adı Orhan olan kayıtları listeleyinizdemo

SELECT * FROM yazarlar WHERE yazar_isim = 'orhan';

-- 4) Yazarlar tablosundaki yazarların adını her ad 1 kez görülecek şekilde listeleyiniz (DISTINCT)

SELECT DISTINCT yazar_isim FROM yazarlar;

-- 5) Kitaplar tablosunda basım yılı 2002 ve fiyatı 25 lira olan kitabı listeleyelim (AND)

SELECT * FROM kitaplar WHERE yil = 2002 AND fiyat = 25; 

-- 6) Yazarlar tablosunda adı Orhan veya İsa olan yazarların sadece adını ve yaşını listeleyinizdemo

SELECT yazar_isim, yas FROM yazarlar WHERE yazar_isim = 'orhan' or yazar_isim = 'isa';

-- 7) Yazarlar tablosundaki yazarın adını, soyadını tablodaki adıyla, yaşını ise YAZARIN_YASI adıyla listeleyiniz (AS)

SELECT yazar_isim, soyisim, yas AS 'YAZARIN_YASI' FROM yazarlar;

-- 8) Yazarlar tablosundaki yaarın adı ve soyadını birleştirip, ad soyad olarak listeleyip, yazarın yaşıyla birlikte listeleyindemo

SELECT yazar_isim|| ' ' ||soyisim as 'ad soyad', yas FROM yazarlar;

-- 9) Yazarlar tablosundaki adı "o" harfi ile başlayan yazarları listeleyin

SELECT * FROM yazarlar WHERE yazar_isim LIKE 'o%';

-- 10) Kitaplar tablosundaki sayfa sayısı 200 ile 400 arasında olan kitapların adını ve sayfa sayısını listeleyiniz

SELECT kitap_isim, sayfa FROM kitaplar WHERE sayfa BETWEEN 200 AND 400;

-- 11) Kitaplar tablosundaki kitap adı sakli ev, son moda ve bir umut olan kitapları listeleyin

SELECT * FROM kitaplar WHERE kitap_isim = 'sakli ev' OR kitap_isim = 'son moda' OR kitap_isim = 'bir umut';  --1.yol

SELECT * FROM kitaplar WHERE kitap_isim IN ('sakli ev','son moda','bir umut');  --2.yol

-- 12) Kitaplar tablosundaki kitapların adı s veya b ile başlayanlarını listeleyiniz

SELECT * FROM kitaplar WHERE kitap_isim LIKE 's%' OR kitap_isim LIKE 'b%';

-- 13) Yazarlar tablosundaki adı orhan ve soyadı erdem olan veya adı ekrem ve id si 1 olan yazarları ID, SOYİSİM ve İSİM kolonlarını listeleyin

SELECT id, yazar_isim, soyisim FROM yazarlar WHERE (yazar_isim = 'orhan' AND soyisim = 'erdem') OR (yazar_isim = 'ekrem' AND id = 1);

-- 14) Basım yılı 2007 veya 2008 olup fiyatı 12 lira olan kitabı listeleyin

SELECT * FROM kitaplar WHERE (yil = 2007 or yil = 2008) AND fiyat = 12;

-- 15) Kitaplar tablosunda basım yılı 1990 ve 2005 arasında olan kitapları listeleyiniz

SELECT * FROM kitaplar WHERE yil BETWEEN 1990 AND 2005;

-- 16) Kitaplar tablosunda basım yılı 1990 ve 2005 arasında olan ve fiyatı 20 liradan fazla olan kitapları listeleyiniz

SELECT * FROM kitaplar WHERE (yil BETWEEN 1990 AND 2005) and (fiyat >= 20);

-- 17) Kitaplar tablosundaki kitapları fiyatına göre sıralayınız

SELECT * FROM kitaplar ORDER BY fiyat;

-- 18) Yazarlar tablosundaki yazarları adına, adı aynı olanları da soyadına göre sıralayınız.

SELECT yazar_isim,soyisim FROM yazarlar ORDER BY yazar_isim, soyisim;

-- 19) Kitaplar tablosundaki fiyatı 15 den fazla olan kitapları sayfa sayısına göre azalan şekilde sıralayınız.

SELECT * FROM kitaplar WHERE fiyat > 15 ORDER BY sayfa DESC;

-- 20) Kitaplar tablosundaki ilk 3 kaydı listeleyiniz.

SELECT * FROM kitaplar LIMIT 3;

-- 21) Kitaplar tablosundaki ilk 3 kaydın kitap adı, sayfa ve fiyat bilgisini FİYAT_BİLGİSİ olarak listeleyin.

SELECT kitap_isim, sayfa, fiyat as 'FİYAT_BİLGİSİ' FROM kitaplar LIMIT 3;

-- 22) Sayfa sayısı en fazla olan kitabı listeleyin.

SELECT * FROM kitaplar ORDER BY sayfa DESC LIMIT 1;

-- 23) Yazarlar tablosundaki en genç yazarı listeleyin.

SELECT * FROM yazarlar ORDER by yas ASC LIMIT 1;

SELECT yazar_isim, soyisim, MIN(yas) AS 'yas' FROM yazarlar;

-- 24) Yazarlar tablosundaki adı orhan olan yazarlardan en yaşlı olanı listeleyiniz.

SELECT * FROM yazarlar WHERE yazar_isim = 'orhan' ORDER by yas DESC LIMIT 1;

-- 25) Soyadının ikinci harfi e olan yazarları listeleyiniz.

SELECT * FROM yazarlar WHERE soyisim LIKE '_e%';

-- 26) Kitapları yazar id ye göre sıralayın.

SELECT * FROM kitaplar ORDER by yazarid;

-- 27) Kitapları her sorgulamada sıralaması farklı olacak şekilde rastgele listeleyiniz.

SELECT * FROM kitaplar ORDER by random();

-- 28) Yazarlar tablosuna KEMAL UYUMAZ adlı yazarı ekleyin.

INSERT INTO yazarlar (id, yazar_isim, soyisim, yas) VALUES (5, 'KEMAL', 'UYUMAZ', 31);

SELECT * FROM yazarlar WHERE yazar_isim LIKE '%kemal';

-- 29) Soyad bilgisi olmayan 60 yaşındaki mehmet adındaki yazarı tabloya ekleyiniz. ID 6

INSERT INTO yazarlar (id, yazar_isim, yas) VALUES (6, 'mehmet', 60);

-- 30) id 7 29 yaşında çağlar üzümcü id 8 34 yaşında leyla alagöz, id 9 32 yaşında ayşe bektaş, tek sorguda yazarlar tablosuna ekleyelim.

INSERT INTO yazarlar (id, yazar_isim, soyisim, yas) VALUES (7,'çağlar','üzümcü',29),(8,'leyla','alagöz',34),(9,'ayşe','bektaş',32);

-- 31) Demo tablosunda name kolonu DELETE olan satırın hint kolonundaki açıklamasını 'Silme işlemi yapar' olarak güncelleyin.

SELECT name,hint FROM demo;

UPDATE demo SET hint = 'Silme işlemi yapar' WHERE name = 'DELETE';

SELECT hint FROM demo WHERE name = 'DELETE';

-- 32) Demo tablosunda name kolonu içinde 'sql' terimi geçen tüm satırların hint alanını 'sql terimi içerir' şeklinde güncelleyin.

UPDATE demo SET hint = 'sql terimi içerir' WHERE name LIKE '%sql%' ;

SELECT hint, name FROM demo WHERE name LIKE '%sql%' ;

-- 33) Demo tablosundaki hint alanındaki tüm değerlere 95 yazdırın. sonrasında 5 arttırın.

UPDATE demo SET hint = 95;
UPDATE demo SET hint = hint + 5;
SELECT hint FROM demo;

-- 34) Demo tablosundaki 12 ve 17 numaralı id leri önce listeleyin, sonra silin.

SELECT * FROM demo WHERE id IN (12,17);
DELETE FROM demo WHERE id IN (12,17);







