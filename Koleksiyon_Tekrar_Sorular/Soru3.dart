//3.SORU
/*
Her bir elemanında keyleri string, valueleri dynamic olan bir
liste oluşturun. Bu listedeki her bir eleman il adını, ilçe sayısını,
plaka kodunu tutsun. Sonrasında da bu listeyi okunaklı bir şekilde
yazdırın. Örnek listenin birinci elemanında bulunan il ankara, plaka
kodu:06, ilçe sayısı :10 (değerler rastgele olabilir)
*/

main(List<String> args) {
  List<Map<String, dynamic>> iller = <Map<String, dynamic>>[];
  Map<String, dynamic> eklenecekSehir1 = Map<String, dynamic>();
  eklenecekSehir1['İl Adı'] = 'Ankara';
  eklenecekSehir1['İlçe Sayısı'] = '10';
  eklenecekSehir1['Plaka Kodu'] = 6;

  Map<String, dynamic> eklenecekSehir2 = <String, dynamic>{};
  eklenecekSehir2['İl Adı'] = 'Bursa';
  eklenecekSehir2['İlçe Sayısı'] = '6';
  eklenecekSehir2['Plaka Kodu'] = 16;

  var eklenecekSehir3 = <String, dynamic>{};
  eklenecekSehir3['İl Adı'] = 'İstanbul';
  eklenecekSehir3['İlçe Sayısı'] = 16;
  eklenecekSehir3['Plaka Kodu'] = 34;

  iller.add(eklenecekSehir1);
  iller.add(eklenecekSehir2);
  iller.add(eklenecekSehir3);

  iller.add({'İl Adı': 'İzmir', 'İlçe Sayısı': '9', 'Plaka Kodu': '35'});

  for (int i = 0; i < iller.length; i++) {
    var oankiSehirMapYapisi = iller[i]; //Her bir eleman bir map yapısı olduğundan O Anki Map yapısını i ile dolaşmamız gerekiyor ve dolaştıkça da printte ekrana yazdırıyoruz.
    print(
        "Listenin ${i + 1}. elemanında bulunan şehir adı: ${oankiSehirMapYapisi['İl Adı']} ilce sayısı: ${oankiSehirMapYapisi['İlçe Sayısı']} plaka kodu: ${oankiSehirMapYapisi['Plaka Kodu']}");
  }
}

//Çıktı
/*
Listenin 1. elemanında bulunan şehir adı: Ankara ilce sayısı: 10 plaka kodu: 6
Listenin 2. elemanında bulunan şehir adı: Bursa ilce sayısı: 6 plaka kodu: 16
Listenin 3. elemanında bulunan şehir adı: İstanbul ilce sayısı: 16 plaka kodu: 34
Listenin 4. elemanında bulunan şehir adı: İzmir ilce sayısı: 9 plaka kodu: 35
*/