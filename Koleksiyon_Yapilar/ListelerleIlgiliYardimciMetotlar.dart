/*
- Listerle ilgili bazı yardımcı metodlara ihtiyacımız olur. Listenin içeriğini kontrol etmek için, listede gerçekleşenleri anlayabilmek için vs.
- `.reversed`: sayıları tersten yazdırır
- `.add`: eleman ekler
- `.remove`: belirtilen elemanı siler.
- `.removeAt`: belirtilen indeksteki elemanı siler
- `.contains`: if yapısının içersinde kullandık listedeki bir elemanı sorgulamak için kullandığımız bir metottur.
- `.elementAt`: Bir sayı listesindeki elamanın indeks numarasına göre ekrana getirilmesinde kullanılan metottur.
- `.indexOf`: Sayıyı değer olarak alıp belirtilen sayının indeksini ekrana yazdırır.
- .`shuffle`: Rastgele olarak listedeki elemanların yerlerini değiştirmiştir.

Örnek Kod ve Notlar:
 */
main(List<String> args) {
  List<int> sayilar = [10, 4, 6, 55, 7, 8, 15];
  if (sayilar.isEmpty) {
    print(sayilar.first);
    print(sayilar.last);
  }

  print("Boş mu:" + sayilar.isEmpty.toString());
  print("Eleman Sayısı: ${sayilar.length}");
  print("Ters sırada yazdırırsak listeyi: ${sayilar.reversed}");

  sayilar.add(23);
  print(sayilar);
  sayilar.remove(55); //verilem elemanı siler
  print(sayilar);
  sayilar.removeAt(5); //verilen indeksteki elemanı siler
  print(sayilar);

  //sayilar.clear(); bu işlem tüm sayıları siler
  if (sayilar.contains(9)) {
    //contains listedeki elemanı sorgular.
    print("Listede 9 var ");
  } else {
    print("Listede 9 yok.");
  }
  print(sayilar);

  print(sayilar.elementAt(2)); //sayı listesindeki elamanın indeks
  //numarasına göre ekrana getirilmesinde kullanılan metottur.
  print(sayilar.indexOf(23)); //elemanın kendisini yazıp
  //indeks numarasını göstermeye yarayan metot
  sayilar.shuffle(); //sayıları önce rastgele karıştıran metotla kullandık
  print(sayilar); //ardından ekrana yazdırdık

}

//Çıktı
/*
Boş mu:false
Eleman Sayısı: 7
Ters sırada yazdırırsak listeyi: (15, 8, 7, 55, 6, 4, 10)
[10, 4, 6, 55, 7, 8, 15, 23]
[10, 4, 6, 7, 8, 15, 23]
[10, 4, 6, 7, 8, 23]
Listede 9 yok.
[10, 4, 6, 7, 8, 23]
6
5
[4, 23, 8, 10, 6, 7]
*/