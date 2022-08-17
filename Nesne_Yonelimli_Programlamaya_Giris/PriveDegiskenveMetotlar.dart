/*
- Private değişken ve Metotlar: Bir sınıftaki değişken metotları bazen erişime kapatmak isteyebilirsiniz. Bu durumlarda `_` işareti ile bunları saklarız. Eğer `_` eklemeden private hale getirmezsek main içerisinden veritabanı bilgilerimiz alınabilir. Eğer private alanlar aynı dosyada ise yine bilgiler alınabilir bu yüzden dosyaları farklı yerlere açıp dosyaları birbirine import ederiz.
- Getter Metotlar: Sınıf değişkenlerini okumak için kullanılan özel fonksiyonlardır. Bu metotların amacı özellikle private yani dış dünyaya erişimi kısıtlanmış veya tamamen kapatılmış değişkenlerin gerekli olduğunda okunmasını sağlamaktır.
- Setter Metotlar: Veri atamaya yarayan fonksiyonlara “setter” diyoruz. Ve setterlara `=` diyip değer atayabiliyoruz. Sınıf değişkenlerine veri atamak için kullanılır. Bu metotların amacı, özellikle private yani dış dünyanın erişimine kapatılan değişkenlere veri atamaktır, ayrıca veri ataması yapılırken gerekli olan konrollerin ve işlemlerin yapılması için kullanılır.
- Aynı mantık getter için de geçerlidir.
- Not: Fonksiyon ve setter olursa normal parantez, getter olursa süslü parantez ile başlarız.
- `String` değerleri `print` içerisinde çağırırız yani getter `print` içerisinde yazılır.
- `Fat arrow (⇒)` bizi süslü parantez ve returnlerden kurtarır.


Örnek Kod ve Çıktı;
*/
//Main Dosyası (kopyalanotları.dart)

import 'dart:math';

main(List<String> args) {
  Musteri m1 = Musteri(150);
  m1.bilgileriYazdir();
  m1.musteriNoAta = 952;
  print(m1.musteriNoSoyle);

  Musteri m2 = Musteri(-999);

  VeritabaniIslemleri db = VeritabaniIslemleri();

  bool sonuc = db.baglan(); //baglan parametresinden veri çeken sonuc adında bir yapı oluştururuz.
  if (sonuc) {
    print("Baglandım");
  } else {
    print("Baglanmadı");
  }
}

//Çıktı
/*
Musteri oluşturuldu musteri no: null
Musteri no: 952
Baglanmadı
*/
//Veri Tabanı İşlemleri Dosyası (veritabani_islemleri.dart)

class VeritabaniIslemleri {
  String _kullaniciAdi = "Zal";
  String _sifre = "123456";

  bool baglan() {
    //bağlantı kontrolü için oluşturduğumuz boolean yapısı
    if (_internetVarMi()) {
      //internet varsa aşağıdaki işlemlere devam edilsin diye mantıklı bir if yapısı oluşturuyoruz.
      if (_kullaniciAdi == "zal" && _sifre == "12456") {
        return true;
      } else
        return false;
    } else {
      return false;
    }
  }

  //Main fonksiyonundaki varsayılan olarak adlandırdığımız db nesnesinin sağlıklı çalışması için default kurucu metot oluştururuz.
  VeritabaniIslemleri() {}
  //Aşağıda girilmesini istediğimiz bilgileri isimlendirilmiş kurucu metot ile oluşturduk.
  VeritabaniIslemleri.loginWithNameandPassword(
      String kullaniciAdi, String sifre) {}

  bool _internetVarMi() {
    //bağlantı ile ilişkili olan başka bir bool yapı olan internetVarmi yapısını oluşturduk.
    if (Random().nextBool()) {
      return true;
    } else
      return false;
  }
}
//Aşağıdaki yapı normalde başka bir dosyada tutulması gerekmektedir.

class Musteri {
  int? _musteriNo;

  /* 
  Musteri(int musteriNo){
    this.musteriNo= musteriNo;
  }
  */
  Musteri(int musteriNo) {
    _musteriNoKontrol(musteriNo);
  }

  String get musteriNoSoyle {
    return "Musteri no: $_musteriNo";
  }

  String get musteriNoSoyle2 => "Musteri No: $_musteriNo";

  void set musteriNoAta(int no) {
    if (no > 300) {
      _musteriNo = no;
    } else
      return;
  }

  void _musteriNoKontrol(int no) {
    if (no > 300) {
      _musteriNo = no;
    } else
      return;
  }

  void bilgileriYazdir() {
    print("Musteri oluşturuldu musteri no: $_musteriNo");
  }
}