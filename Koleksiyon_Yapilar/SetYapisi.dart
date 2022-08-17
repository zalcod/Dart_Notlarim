/*
- `List`’den en önemli farkı elemanları sıralı olarak tutmaz, bu durumda listlerde olduğu gibi indeksleri kullanamayız.
- Bir diğer farkı ise bir elemandan sadece bir tane olur yani her bir eleman birbirinden farklıdır.
- indeks olmadan elemanları kontrol etmek için “`contains`” metodu kullanılabilir bunun dışında listelerdeki metodların tamamı `set` yapısı için de geçerlidir.
- Küme anlamına gelir.
- Unique yani her biri birbirinden farklı olan elemanları saklarken biz setlerden faydalanıyoruz.
- Setlerde bir sıralama söz konusu değildir.
- Set yapısında indeks değeri tutulmadığından indeks numarasıyla elemanlara ulaşamazdık.
- Herhangi bir set yapısı içerisine farklı bir set yapısı ekleyebiliriz bunu yapmak için elimizdeki yapının adını yazdıktan sonra `.addAll` diyerek parantez içerisinde eklemek istediğimiz set yapısını yazarız.

Örnek Kod ve Notlar:
 */

main(List<String> args) {
  Set<String> isimler = Set();
  isimler.add("zal");
  isimler.add("zal7");
  isimler.add("11");
  isimler.add("zal007");
  isimler.add("22");
  isimler.add("63");

  bool sonuc = isimler.remove("63"); //bool olarak elemanı sildik ve listede
  //bulunan bir eleman olduğu için sonuç ekranında true çıktısı aldık
  print("sonuc: " + sonuc.toString());

  print("***********************************");

  for (String s1 in isimler) {
    //set yapımız string değer tuttuğundan
    //yeni oluşturulan for döngüsünde ekrana yazdırılacak değerler
    //s1 adında bir set yapısında tutulur ve ekrana yazdırılır.
    print("isim : $s1");
  }

  Set<int> numaralar =
      Set.from([1, 2, 3, 4, 2, 1, 5, 2, 1, 3, 2, 4, 1, 3, 1, 1, 1]);
  //set.from ile set'imizin içerisine sayıları koyabiliyoruz.

  List<int> ciftSayilar = [0, 2, 4, 6, 8, 10, 8, 6, 4, 2, 0];

  for (int s1 in numaralar) {
    print("no: $s1");
  }

  numaralar.clear();
  numaralar.addAll(ciftSayilar);

  for (int s1 in numaralar) {
    print("Add all metodundan sonra numaralar: $s1");
    //add all metodunu bir set yapısında kullandığımız için
    //implemente ettiğimiz bir List olsa dahi ekranda yine set
    //özelliklerini barındıran bir çıktı aldık.
  }
}

//Çıktı
/*
sonuc: true
***********************************
isim : zal
isim : zal7
isim : 11
isim : zal007
isim : 22
no: 1
no: 2
no: 3
no: 4
no: 5
Add all metodundan sonra numaralar: 0
Add all metodundan sonra numaralar: 2
Add all metodundan sonra numaralar: 4
Add all metodundan sonra numaralar: 6
Add all metodundan sonra numaralar: 8
Add all metodundan sonra numaralar: 10
*/