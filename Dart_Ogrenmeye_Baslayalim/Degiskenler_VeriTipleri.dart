/*
>Bir işlemi gerçekleştirmek için yapılması gereken ilk şey o veriyi hafızaya almaktır. 
İşlem yapmak istediğimizde de veriyi hafızadan çağırıp gerekli işlemleri yerine getirmektir. 
Hafızadaki verirleri ifade etmek için programlama dillerinde değişkenleri kullanırız. 
Özetle, programlama dilinde işlediğimiz verileri bilgisayarın hafızasında tutmak için yapmış 
olduğumuz tanımlamalardır. Tutulan verinin türüne göre farklı veri tipleri vardır. 
Dart built - in olarak şu tipleri içerir. 
- Number 
- int tamsayılar 
- double ondalıklı sayılar 
- String metinsel ifadeler 
- Boolean true/false 
>Tüm veri tipleri Object yani nesneleridir. var anahtar kelimesi variable anlamına gelir ve veri türünü belirtmek istemiyorsak kullanırız. Atanan ifadeye göre otomatik olarak türü belirtir.
>Number, String ve Boolean adında veri tipleri vardır.
>Number: Sayıları gösterir. İnteger (int) ve Double (ondalık) sayılar olmak üzere ikiye ayrılır.
>String: Metinsel ifadeleri belirtir.
>Örnek Kod ve Notlar:
*/

main(List<String> args) {
  //ARTTIRMA AZALTMA OPERATORLERI
  int sayi1 = 10;
  sayi1 = sayi1 + 1;
  sayi1 += 5; // sayi1 = sayi1 + 5
  print(sayi1);

  sayi1++;
  print(sayi1);

  int sayi2 = 10;

  print(sayi2++);
  print(++sayi2);

  //ISLEM ONCELIGI

  int s1 = 10, s2 = 5;
  double sonuc = 0;

  sonuc = ((s1 + s2 * 3 - s2) + s2 - s1 * 5 + s1).toDouble();
  print(sonuc);

  sonuc = (s1 * s2 + 4 / 2) + (s1++ * s2) + (++s1);
  print(sonuc);


}