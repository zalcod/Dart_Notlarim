/*
- Sınıf: Kendi veri türlerimiz veya soyut olan taslaklara denir. Kendi içinde değişkenlere ve metodlara sahiptir. İstediğimiz bir nesnenin veya varlığın bilgisayar dillerinde tanımıdır.
- Nesne: Oluşturulan soyut ve taslak olan sınıflardan üretilen örneklere denir. Nesneler için sınıfın sahip olduğu değerlere ulaşmak için kullandığımız referanslar denebilir.
- Sınıf, eğer bir uzaktan kumandalı araba ise nesne onu kontrol ettiğimiz kumandadır.
- Kendi veri türümüzü tutmak istiyorsak sınıflardan faydalanırız.
- Flutter’da uygulamamızda kullandığımız yazıdan, butona hepsi kendi içerisinde bir sınıftır.
- Sınıf adları büyük harfle başlamalı.
- Sınıfın içinde tanımladığımız fonksiyonlara “metot” denir.
- Sınıftaki özelliklerin `main` fonksiyonunda nitelendirilmesinde kullanılan öğelere nesne *instance* (oluşum/değişken) denir. Bu nesnelerin class’taki özelliklerine ise *instance veriable* (somut değişken) denir. Aslında anlaşılacağı üzere bir somutlaştırma yapıyoruz.
- Örnek Kod ve Notlar:
*/
main(List<String> args) {
  int sayi = 5;
  var sayi2 = 10;
  Ogrenci zal = Ogrenci(); //Sınıfımızı main içerisinde tanımladık.
  zal.ogrAd = "zal solmuş";//Ardından verilen özelliklere göre 
//sırasıyla değerlerimizi girdik. Burada zal bir nesnedir.
//ait olduğu özellikler ise yani somut değişkenler ise instance variables olarak tanımlandı

  zal.ogrNo = 282;
  zal.aktifMi = true;
  Ogrenci donatello = Ogrenci();
  Ogrenci angelo = Ogrenci();

  var ninja = Ogrenci();
  zal.dersCalis();
}

class Ogrenci {
  //instance variables
  int ogrNo = 1;
  String? ogrAd = "";
  bool? aktifMi = true;

  void dersCalis() {
    print("${ogrNo} numaralı ${ogrAd} ders çalışıyor.");
  }
}

//Çıktı
//282 numaralı zal solmuş ders çalışıyor.