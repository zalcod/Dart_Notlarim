/*
>Daha çok widgetlar içerisinde kullanılır.
>"?" kısa kullanımda soru işareti if demektir.
>":" kısa kullanımda iki nokta üstüste else demektir.
>"??" bu ifade null değilse demektir.
Kod Örneği ve Not:
*/
main(List<String> args) {
  int sayi1 = 567;
  int sayi2 = 478;
  int kucukSayi;

  /*
    if (sayi1 < sayi2) {
      kucukSayi = sayi1;
    } else {
      kucukSayi = sayi2;
    }
    print(kucukSayi);
  */

  //sayi1 < sayi2 ? kucukSayi = sayi1 : kucukSayi = sayi2;
  //print(kucukSayi);

  kucukSayi = sayi1 < sayi2
      ? sayi1
      : sayi2; /*sayı 1 sayı 2 den küçükse 
  belirtilen değere sayı 1 i yazdır
  değilse sayı 2 yi yazdır denmiş burada*/
  print("Küçük Sayı: $kucukSayi");

  print("***************************************************************");

  String? ad = null;
  String? soyad = "zargana";
  String? mesaj;

  mesaj = ad ?? soyad;
  print("Merhaba $mesaj");

  //Bu gösterimden mesaj kısmında şunu demiş olduk eğer ad 
  //null ise ekrana doğrudan soyad yazdır. Eğer her iki değerde 
  //null ise ekrana null yazdır. 
}

//Çıktı
/*
Küçük Sayı: 478
***************************************************************
Merhaba zargana
*/