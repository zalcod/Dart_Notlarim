/*
>null: olan bir değere herhangi bir fonksiyon içerisinde işlem yaptıramayız,
yaptırmak için özel ayarlamalar yapmamız gerekir.
>'var' veri türünde null değer atanamaz hata verir soru işareti koymamız halinde.
>Hexadecimal Sayılar: On altı tabanlı sayılar.
>num: Tamsayı veya ondalıklı bir ifadeyi saklayabilir 
>int: Tamsayıları saklarken kullanılan veri türüdür hexadecimal değerleri de saklayabilir. Örnek bir hexadecimal sayı 0xAABBCC
>double: Ondalıklı ifadeler için kullanılan veri türüdür. exponents değerli saklayabilir, 1.42e5 var anahtar kelime ile de tamsayı veya ondalıklı ifade saklanabilir.var olarak int deger atandıysa sonrasında double değer atanamaz değişkenlerimize ilk değerleri atamak zorundayız, null değer kabul edilmez. null değerlerin kabul edilmesini istiyorsak int?, double? bool? gibi farklı değişken tanımları yapmamız gerekir. 
>boolean:true/false değerleri alır
Örnek Kod ve Notlar:
*/
void main(List<String> args) {
  int yas = 14;
  print(yas);

  print("------------------------");

  yas = 45;
  print(yas);

  print("------------------------");

  num yil = 1988;
  print(yil);

  print("------------------------");

  double sayi = 53;
  print(sayi);

  print("------------------------");

  int kilo = 32.45.toInt();
  print(kilo);

  print("------------------------");

  var sayi2 = 90;
  print(sayi2);

  print("------------------------");

  int? s1 = null;
  s1 = 9;
  print(s1 + 5);

  print("------------------------");

  int hexadecimalSayi = 0xAABBCC;
  print(hexadecimalSayi);
}

//Çıktı
/*
14
------------------------
45
------------------------
1988
------------------------
53.0
------------------------
32
------------------------
90
------------------------
14
------------------------
11189196
*/