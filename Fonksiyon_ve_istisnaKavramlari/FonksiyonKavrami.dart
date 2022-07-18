/*
>Fonksiyon kavramı sayesinde problemlerimizi küçük alt problemlere parçalayarak çok daha okunaklı,
hata bulması kolay uygulamalar geliştirebiliriz.
>Bir uygulama geliştirirken, bir problemi çözerken o problemde belli bir işi yapan kodları
methodlara bölmemiz gerekir. Bunun için method veya fonksiyon oluşturabiliriz.
>Methodlar parametre alabilir veya herhangi bir parametreye sahip olmayabilir.
>Dart dilinde return ve metod geri döndürme veri tipi değeri opsiyoneldir, yani belirtmek
zorunda değiliz.(Belirtlilmesi önerilir.)
>Fonksiyonu değişkenden ayıran en belirgin özellik parantezlerdir.
>Süslü parantezler fonksiyonun yaşam alanıdır.
>Fonksiyonu üretip ilgili yere koymazsak fonksiyonumuzu çalıştıramayız.
>İki fonksiyon arasında iletişim sağlamak için parametreler kullanırız.
>Geriye değer döndürmemizi sağlayan parametre 'return' dur. Fonksiyon çağrıldığı yere
geri yollanır yani aşağıdaki örnekte main içerisine yollanır. Return edilen değerleri
main içerisinde değer atayabiliriz. Ancak return edilmemişse herhangi bir değer atayamayız
çünkü onun değeri belirtilen fonksiyon içerisinde belirtilmiştir.
>Geri döndürülen fonksiyonda print komutu main içerisinde verilebilir.
>Geriye değer döndüren fonksiyonların başına değerin türünü (int, string vs.) yazarsak
iyi olur. Eğer geriye değer döndürülmüyorsa da void yazarız fonksiyonun başına.
>Dart Dili'nde fonksiyonlar aşağıdaki gibi incelenmektedir:
>Optional parameters (İsteğe bağlı parametreler)
>The main() function (Main fonksiyonu)
>Functions as first-class objects (Birinci sınıf nesneler olarak fonksiyonlar)
>Anonymous functions (İsimsiz fonksiyonlar)
>Lexical scope (Değişken etki alanı yapısı)
>Lexical closures (Kapatma)
>Testing functions for equality (Eşitlik durumu kontrolü için fonksiyon test etme)
>Return values (Geriye dönüş değerleri)

Örnek Kod ve Notlar:
*/
void main(List<String> args) {
  cevreHesabi(); //parametresiz fonksiyonu böyle çağırıyoruz
  int hacimDegeri = hacimHesapla(4, 5, 7); 
  //Hacim değerimizi parantez içine değer atayarak kendi fonksiyonlarına
  //yollayıp ordan sonucu rreturn ettiriyoruz
  print("Hacim Değerinin Sonucu: $hacimDegeri");
  int sonuc = alanHesabi(8, 9);
  print("Alan Hesabının Sonucu: $sonuc");
}

//parametresiz fonksiyon
void cevreHesabi() {
  int en = 7, boy = 10;
  int cevre = (en + boy) * 2;
  print("Çevre Hesabı Değerimiz : $cevre");
}

//parametre alan fonksiyon
int hacimHesapla(int en, int boy, int yukseklik) {
  return en * boy * yukseklik;
}

//parametre alan fonksiyon
int alanHesabi(int sayi1, int sayi2) {
  // şöyle de yazabilirdik
  //print("alan ${sayi1*sayi2}");
  return sayi1 * sayi2;
}

//Çıktı
/*
Çevre Hesabı Değerimiz : 34
Hacim Değerinin Sonucu: 140
Alan Hesabının Sonucu: 72
*/