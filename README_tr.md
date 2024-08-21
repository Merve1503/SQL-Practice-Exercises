# SQL Pratik Alıştırmaları

Bu depo, veritabanı yönetiminin çeşitli yönlerine odaklanan bir SQL pratik alıştırmaları koleksiyonunu içermektedir. Bu alıştırmalar, sorgulama, güncelleme, veri ekleme ve silme gibi çeşitli SQL komutlarını kapsamaktadır. Alıştırmalar, SQL becerilerinizi geliştirmek ve yaygın veritabanı işlemlerine dair pratik örnekler sunmak amacıyla tasarlanmıştır.

## 📁 Proje Yapısı

- **sql_pratikleri.sql**: Bu dosya, pratik oturumlar sırasında kullanılan tüm SQL komutlarını içermektedir. Verileri sorgulama, sonuçları filtreleme, kayıtları güncelleme ve daha fazlası gibi konularda alıştırmalar bulunur.

## 🛠️ Ele Alınan SQL Konuları

### **Temel SQL Sorguları**
- **Tüm kayıtları getirme**: `kitaplar` tablosundaki tüm kayıtları seçme.
- **Belirli sütunları seçme**: `yazarlar` tablosundaki belirli sütunları seçme.

### **Veri Filtreleme**
- **Belirli değerlere göre filtreleme**: Belirli kriterlere göre kayıtları `WHERE` kullanarak filtreleme (örneğin, adı "Orhan" olan yazarları bulma).
- **`DISTINCT` kullanma**: Benzersiz yazar adlarını listeleme.
- **`LIKE` ile desen eşleştirme**: Adı belirli harflerle başlayan yazarları bulma.

### **Mantıksal Operatörler**
- **`AND`, `OR` kullanma**: Verileri filtrelemek için birden fazla koşulu birleştirme, örneğin belirli bir yılda yayımlanan ve belirli bir fiyatta olan kitapları bulma.

### **Sonuçları Sıralama ve Sınırlandırma**
- **Belirli sütunlara göre sıralama**: Sonuçları fiyat, sayfa sayısı veya yazar adlarına göre sıralama.
- **Sonuçları sınırlandırma**: Tablodan ilk N kaydı getirme.

### **Toplamsal Fonksiyonlar**
- **En genç/en yaşlı yazarı bulma**: `MIN` ve `MAX` fonksiyonlarını kullanarak uç değerleri bulma.
- **Toplamları hesaplama**: `SUM`, `AVG` gibi fonksiyonlar ile toplama işlemleri yapma.

### **Veri Ekleme ve Güncelleme**
- **Yeni kayıtlar ekleme**: `yazarlar` tablosuna yeni yazarlar ekleme.
- **Toplu ekleme**: Tek bir sorguda birden fazla kayıt ekleme.
- **Belirli alanları güncelleme**: `demo` tablosundaki belirli koşullara göre açıklamaları güncelleme.

### **Veri Silme**
- **Belirli kayıtları silme**: Belirli ID'lere veya diğer kriterlere göre kayıtları silme.

## 🚀 Başlarken

### Gereksinimler
Bu depodaki SQL komutlarını çalıştırmak için ihtiyacınız olanlar:
- **SQLite**: [Buradan](https://www.sqlite.org/download.html) SQLite'ı indirip kurabilirsiniz.
- Alternatif olarak, komutları doğrudan tarayıcınızda çalıştırmak için [SQLite Online](https://sqliteonline.com/) kullanabilirsiniz.

## 📝 Notlar
- **Bu alıştırmalar, eğitim amaçlı olup SQL becerilerinizi geliştirmenizi hedeflemektedir.
- **SQL komutları, ardışık olarak çalıştırılabilecek şekilde yazılmıştır, bu nedenle adım adım pratik yapmak için idealdir.

## 📄 Lisans
Bu proje açık kaynaklıdır ve MIT Lisansı altında mevcuttur.

## 📧 İletişim
Herhangi bir sorunuz veya geri bildiriminiz varsa, lütfen mervekartal07@gmail.com adresinden benimle iletişime geçin.
