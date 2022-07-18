main(List<String> args) {
  List isimListesi = ["emre", "hasan", "zal"];
  for (String gecici in isimListesi) {
    //geçici strin bir listemizi isimListesi'nden oluşturup ekrana yazdırdık
    print("$gecici");
  }
  for (int i = 0; i < isimListesi.length; i++) {
    //int bir i değerinin sıfırdan başlamak suretiyle listedeki eleman
    //sayısının uzunluğu kadar dolaşıp
    print("Okunan eleman " + isimListesi[i]);
    //her gezilen elemanı ekrana kendi değeriyle yazdır.
  }
}

//Çıktı
/*
emre
hasan
zal
Okunan eleman emre
Okunan eleman hasan
Okunan eleman zal
*/