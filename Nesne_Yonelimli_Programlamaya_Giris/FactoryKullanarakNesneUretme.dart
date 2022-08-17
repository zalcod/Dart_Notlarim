/*
- Sıradan kurucu metodlar `return` içermemelerine rağmen `factory` kurucu metotlar ait oldukları sınıflar tarafından arka tarafta `return` edilirler.
- Eğer `return` kullanmak, farkı durumlara göre nesne üretmek istiyorsak `factory` kullanıyoruz. Bunun güzel yanı kendi koşullarımızı ve şartlarımızı oluşturabiliyor olmamızdır.
- Factory olmayan bir kurucunun içerisine `return` yazamayız.
Örnek Kod ve Notlar:
*/
main(List<String> args) {
  Ogrenci zal = Ogrenci(28, "Zal");
  Ogrenci aristo = Ogrenci.idSiz("Aristo");
  Ogrenci sokrates = Ogrenci.factoryKurucusu(-45, "Sokrates");

  print(sokrates.id);
  print(aristo.isim);
  
}

class Ogrenci {
  int id = 0;
  String isim = "";

  Ogrenci(this.id, this.isim) {
    print("Parametreli kurucu çalıştı");
  }

  Ogrenci.idSiz(this.isim) {
    print("İsimlendirilmiş kurucu çalıştı");
  }

  factory Ogrenci.factoryKurucusu(int id, String isim) {
    if (id < 0) {
      return Ogrenci(5, isim); //Eğer id değeri sıfırdan küçükse id'yi default olarak 5 dönder
    } else
      return Ogrenci(id, isim); //Değilse girilen değeri yazdır.
  }
}

//Çıktı
/*
Parametreli kurucu çalıştı
İsimlendirilmiş kurucu çalıştı
Parametreli kurucu çalıştı
5
Aristo
*/