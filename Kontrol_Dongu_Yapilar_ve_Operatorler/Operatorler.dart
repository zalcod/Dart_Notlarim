/*
>Aritmetik Operatörler: Toplama, çıkarma, bölme, çarpma, mod gibi işlemlere aritmetik operatör denir.
>Atama ve Karşılaştırma Operatörleri: örnek: "sayi3 += 5; bu ifade şu demektir-> sayı 3'ün değerine 5 ekle ve sayı 3'ün yeni değerini belirle.
>Karşılaştırma Operatörleri:
  != bu ifade eşit değildir demektir.
  <,>,<=,>= gibi operatörler de kullanılır.
>Mantıksal Operatörler:
  Boolean ifadeler ile beraber kullanımı kolaydır.
  && -> ve
  || -> veya
  ! -> not, değildir
  "ve" ifadesi iki değer de 1 ve ya iki değer de 0 ise 1 sonucunu verir.
  "veya" ifadesinde iki değer de sıfırsa sıfır bunun dışında bir sonucunu verir.
  değerin başına ünlem işareti gelirse mevcut değerin tersi alınır.
Arttırma Azaltma Operatörleri:
  ++ 1 defa arttırır değişkeni
  -- 1 defa azaltır değişkeni
  Bu ifadelerin değişkenin sağında veya solunda olması önemlidir.
> sayi++ 'önce sayıyı kullan sonra 1 arttır' anlamına , ++sayi ise 'önce sayiyi 1 arttır sonra kullan sayıyı' anlamına gelir.
> ++ operatörünü print fonksiyonu içerisinde sona yazarsam ekranda aynı değeri görürüm ancak değer bir artmıştır. ++ operatörünü print fonksiyonu içerisinde başa yazarsam ekranda arttırılmış halini görüntülerim. Bu - - için de aynıdır.
>Eğer önce atama yapıp sonra print fonksiyonu içerisine sayımızı yazarsak ekranda yine arttırılmış halini görüntüleriz.
>İşlem Önceliği:
  1)() önce parantez içi işletilir
  2)++ ve -- Değişkenden önce gelenler
  3)* ve /
  4)+ ve -
  5)= atama işlemi
  6)++ ve --
Örnek Kodlar Notlar;
*/
main(List<String> args) {
  double sayi1 = 9;
  double sayi2 = 6;

//ARITMETIK OPERATORLER
  print("$sayi1 + $sayi2 toplamı ${sayi1 + sayi2}");
  print("$sayi1 - $sayi2 farkı ${sayi1 - sayi2}");
  print("$sayi1 * $sayi2 çarpımı ${sayi1 * sayi2}");
  print("$sayi1 / $sayi2 bölümü ${sayi1 / sayi2}");
  print("$sayi1 % $sayi2 mod ${sayi1 % sayi2}");
  print("*****************************************************");

//ATAMA VE KARSILASTIRMA

  double sayi3 = 5;
  sayi3 = sayi3 + 5;
  print(sayi3);

  sayi3 += 5; // sayi3 = sayi3 + 5
  print(sayi3);

  sayi3 %= 4;
  print(sayi3);
  print("*****************************************************");

//< , > , <= , >= , ==, !=

  double sayi4 = 9;
  double sayi5 = 5;

  if (sayi4 <= sayi5) {
  } else {
    print("Sayi $sayi4 küçük ve eşit değildir $sayi5");
  }

  print("*****************************************************");

  String isim = "emre";
  String soyIsim = "emre";

  if (isim != soyIsim) {
    print("İsim soyisimle aynı değil");
  } else {
    print("isim ile soyisim aynı değere sahip");
  }
  print("*****************************************************");

//Mantıksal operatörler
//&& , ||,  !

/*
java ve kotlin bilen ==> hem javayı hem kotlini bilecek,
herhangi biri bilinmiyorsa şart sağlanmaz.

java veya kotlin bilen ==> bu dillerden sadece birini veya 
her ikisini bilmesi gerekiyor
*/

  bool kosul1 = false;
  bool kosul2 = false;
  

  print(kosul1 && kosul2);
  print(kosul1 || kosul2);
  print(!kosul1);
}

//Çıktı
/*
9.0 + 6.0 toplamı 15.0
9.0 - 6.0 farkı 3.0
9.0 * 6.0 çarpımı 54.0
9.0 / 6.0 bölümü 1.5
9.0 % 6.0 mod 3.0
*****************************************************
10.0
15.0
3.0
*****************************************************
Sayi 9.0 küçük ve eşit değildir 5.0
*****************************************************
isim ile soyisim aynı değere sahip
*****************************************************
false
false
true
*/