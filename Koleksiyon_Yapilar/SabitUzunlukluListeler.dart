/*
- Listeler, Sabit Uzunluklu ve Büyüyen olmak üzere ikiye ayrılır.
- Diğer dillerde dizi olarak bilinen yapılar dart dilinde sabit uzunluklu liste olarak kullanılır.
- `List<int> numaralar = List.filled(10,0)` bu ifade şu anlama gelir →10 eleman içeren sabit uzunluklu liste yani dizi.
- İndex numaraları sıfırdan başlar.
- Sabit uzunluklu listelerin uzunluğunu değiştiremeyiz.
- İndeks aralığı dışında bir değer ekrana yazdırılamaz.
- Listenin türüne göre (string, int vs.) listeye eleman yerleştiririz.
- Listenin türünü belirlemezsek sistem otomatikmen Listeye “dynamic” değer atar.
- Listede “growable” değeri belirtilmese de olur.

Örnek Kod ve Notlar:
 */
main(List<String> args) {
  int sayi = 4;
  List<int> sayilar = List.filled(5, 2, growable: false);
  //üstteki ifade şu anlama gelmektedir 5 elemanlı her bir elemanı 2 olan
  //Liste tanımladık.
  sayilar[0] =
      4; //Listedeki belirtilen indeksli elemanın içine gir ve yeni değeri ata.
  sayilar[1] = 1;
  sayilar[2] = 9;

  print(sayilar);
  print(sayilar.length);
  print(sayilar[3]);

  print("*********************************************");

  List<String> isimler = List.filled(2, "");
  isimler[0] = 5.toString();
  isimler[1] = "emre";
  print(isimler);

  print("*********************************************");

  List<dynamic> karisik = List<dynamic>.filled(5, 0);
  karisik[0] = 'emre';
  karisik[1] = 5;
  karisik[2] = false;

  print(karisik);

  //Liste elemanlarını gezmek için for döngüsünü kullanırız
  for (int i = 0; i < sayilar.length; i++) {
    //sayilar listesini gezeriz
    sayilar[i] += 5;
    print(sayilar[i]);
  }

  print("***************************************************");

  for (int oankiEleman in sayilar) { 
//sayilar listesindeki o andaki elemanları sırayla ekrana yazarak tüm listeyi 
//dolaştık.
    print(oankiEleman);
  }
}

//Çıktı
/*
[4, 1, 9, 2, 2]
5
2
*********************************************
[5, emre]
*********************************************
[emre, 5, false, 0, 0]
9
6
14
7
7
***************************************************
9
6
14
7
7
*/