/* 
>Değişken atanabilen tek sat satırlı ifadelere "literal" denir.
>Genel olarak boşluk veya değeri yok demektir. Değer döndürmeyen fonksiyonlarımızın başına void koyuyoruz. Return kullanabiliriz.
>String: Metinsel ifadeler için kullanılan veri türüdür.
-İki string değeri birleştirmek için "+" operatörü kullanılır
-Birden fazla satır süren metinsel ifadeleri birleştirirken "+" kullanmasak da olur.
>İnterpolation: String ifade içinde başka bir string ifadeyi $ifade olarak kullanabiliriz. Böylece "+" kullanmak gerekmez.
>Eğer ifade birden fazla alana sahipse ${ifade.method} şeklinde kullanılır.
>Ayrıca interpolation diğer veri türleri için de geçerlidir.
>.toInt, .toString gibi dönüştürücü komutları kullanmalıyız.
Örnek Kod ve Notlar:
*/
main(List<String> args) {
  String isim = "zal";
  String soyIsim = 'solmuş';
  var kurs = "Dart\'ın Kullanımı";
  String kursTanimi = "Dart'ı ve Flutter'ı öğreneceğiz";

  print(isim + " " + soyIsim);
  print("$isim $soyIsim");
  print("soyadım olan $soyIsim'da bulunan karakter sayısı:" +
      soyIsim.length.toString());
  print("Karakter sayısı ${soyIsim.length}");
  print("Adım olan $isim kelimesinde bulunan karakter sayısı ${isim.length}");

  double en = 10;
  double boy = 12;

  print("Eni $en boyu $boy olan dikdörtgenin alanı: $en * $boy");
  print("Eni $en boyu $boy olan dikdörtgenin alanı: ${en * boy}");
  print(15.9.toInt());
  print(
      "Eni ${en.toInt()} ve boyu ${boy.toInt()} olan dikdörtgenin alanı: ${(en * boy).toInt()}");
  print(
      "Eni ${en.toInt()} ve boyu ${boy.toInt()} olan dikdörtgen alanı : ${en.toInt() * boy.toInt()}");
}

//Çıktı
/*
zal solmuş
zal solmuş
soyadım olan solmuş'da bulunan karakter sayısı:6
Karakter sayısı 6
Adım olan zal kelimesinde bulunan karakter sayısı 3
Eni 10.0 boyu 12.0 olan dikdörtgenin alanı: 10.0 * 12.0
Eni 10.0 boyu 12.0 olan dikdörtgenin alanı: 120.0
15
Eni 10 ve boyu 12 olan dikdörtgenin alanı: 120
Eni 10 ve boyu 12 olan dikdörtgen alanı : 120
*/