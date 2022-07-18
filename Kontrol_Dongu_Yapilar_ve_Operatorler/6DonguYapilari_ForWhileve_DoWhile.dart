main(List<String> args) {
  distakiDongu: //bu bir label yani etikettir 
  //bu etiketler döngüyü kolay şekilde kontrol etmemizi sağlar
  //görüldüğü gibi break ve continue kelimeleri kullanılabilir etiketlerde
  for (int i = 1; i <= 3; i++) {
//int i değeri 1 den başlayarak 3'ten küçük eşit oluncaya
//kadar devam eder her adımda i değeri 1 artttığı durum için
    for (int j = 1; j <= 3; j++) {
//ve yine int j değerinin 3'ten küçük eşit oluncaya kadar
//j değerini her adımda bir arttırıldığı döngü için
      if (i == 2) {
//eğer i değeri ikiye eşit olursa döngüden çıkılır
//ve o ana kadar yapılan hesaplamalar print içerisinde
//ekrana yazdırılır.
        break distakiDongu;
      }
      print("$i * $j = ${i * j}");
    }
  }
}

//Çıktı
/*
1 * 1 = 1
1 * 2 = 2
1 * 3 = 3
*/