//1.SORU
//Şehirleri tuta bir liste oluşturun, 4 tane il ekleyip sırasıyla
//ekrana yazdırın.

main(List<String> args) {
  List<String> sehirler = List.filled(4, '');
  sehirler[0] = 'bursa';
  sehirler[1] = 'ankara';
  sehirler[2] = 'izmir';
  sehirler[3] = 'istanbul';
  for (int i = 0; i < sehirler.length; i++) {
    print(sehirler[i]);
  }
}

//Çıktı
/*
bursa
ankara
izmir
istanbul
*/