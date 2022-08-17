//4. SORU
/*
5 Elemanlı iki farklı liste oluşturun. Elemanları 0 ile 50 değerleri 
arasında rastgele oluşturulsun. Bu elemanları tek bir listeye aktarsın.
Oluşan son listenin elemanlarının karelerini tutan set yapısı oluşturup
ekrana yazdırın.
*/
import 'dart:math';

main(List<String> args) {
  List<int> liste1 = List.filled(5, 0);
  var liste2 = List<int>.filled(5, 0);
  List<int> sonListe = <int>[];
  var sonSetYapisi = <int>{};

  for (int i = 0; i < 5; i++) {
    liste1[i] = Random().nextInt(50);
    liste2[i] = Random().nextInt(50);
  }

  sonListe = [...liste1, ...liste2];

  for (int gecici in sonListe) {
    sonSetYapisi.add(gecici * gecici);
  }

  print(sonListe);
  print(sonSetYapisi);
}

//Çıktı (Random olduğu için her seferinde farklı değerler çıktı olur)
/*
[39, 39, 15, 39, 30, 11, 39, 17, 41, 10]
{1521, 225, 900, 121, 289, 1681, 100}
*/