/*
- Dinamik olarak büyüyen küçülen koleksiyonlarımız varsa sabit uzunluklu listeler yerine büyüyen listeleri kullanırız. Bu listelere varsayılan olarak boyut vermemiz gerekmez.
- Tanımlanması sabit uzunluklu dizilerle benzer sadece burada listenin boyutunu belirtmeyiz.
- `.add` eleman ekler, `.clear` tüm elemanları siler, `.remove` verilen elemanı siler, `.removeAt` belirtilen indexteki elemanı siler. Ayrıca `[]` kullanarak belli bir indexteki elamanı güncelleyebiliriz.
- Dinamik listelerde eleman eklemek için `.add();` metodunu kullanırız.
- Growable (büyütülebilme) parametresini `true` olarak girmeliyiz. Çünkü büyüyebilen listelerden bahsediyoruz.
- [Parametre, fonskiyon, map, array kavramları ile ilgili ufak bir makale bu yazının içindedir.](https://www.sempeak.com/blog/parametre-nedir#:~:text=Fonksiyon%20i%C3%A7indeki%20i%C5%9Fleme%20giren%20say%C4%B1sal,belirten%20ifadelere%20%E2%80%9Cparametre%E2%80%9D%20denir)
- `List<int> sayilar4 = List.empty(growable: true);` bu ifade ile `List <int> sayilar5 = [];` bu ifade aynıdır. Böylelikle sabit uzunluklu bir listeyi nasıl dinamik bir listeye dönüştürebileceğimizi görebiliyoruz.
- Listelerdeki elemanları yerleştirirken köşeli parantez ile normal parantez arasındaki farkı iyi anlamak gerekiyor. Köşeli parantezler sabit uzunluklu listelerin elemanlarında kullanılırken. Normal parantezler `.add` metodu ile kullanılır.

Örnek Kod ve Notlar:
 */
main(List<String> args) {
  List<int?> sayilar = []; //boş eleman alabilmesine karşın ? koyduk
  sayilar.add(1);
  sayilar.add(2);
  sayilar.add(3);
  sayilar.add(4);
  print(sayilar);
  print(sayilar.length);
  sayilar.length = 100;
  print(sayilar.length);
  print("************************************************");

  List<int> sayilar2 = [1, 2, 3];
  sayilar2.add(55);
  print(sayilar2);
  print("*************************************************");
  List<int> sayilar3 = List.filled(10, 10, growable: true);
  //büyüyebilen sabit uzunluklu gibi görünen ancak büyüyebilen bir listenin
  //gösterimi
  sayilar3.add(45);
  print(sayilar3);
  print(sayilar3.length);

  print("****************************************************");
  List<int> sayilar4 = List.empty(growable: true);
  List<int> sayilar5 = [];
  sayilar5.add(5);
  sayilar4.add(10);
  print(sayilar4);

}

//Çıktı
/*
[1, 2, 3, 4]
4
100
************************************************
[1, 2, 3, 55]
*************************************************
[10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 45]
11
****************************************************
[10]
*/