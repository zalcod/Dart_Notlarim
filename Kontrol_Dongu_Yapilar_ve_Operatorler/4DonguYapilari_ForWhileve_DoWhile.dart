main(List<String> args) {
  int sayac2 = 1;
  do {
    //Sayacımız 1'den başladığı için do-while özelliği
    //gereği önce ilk değeri ekrana yazdırır. Ardından
    //sayacı bir arttırır taa ki while yani 5'ten küçük eşit
    //oluncaya kadar.
    print("Okunan Sayac Degeri: $sayac2");
    sayac2++;
  } while (sayac2 <= 5);

  for (int i = 0; i < 10; i++) {
    //int i sıfırdan başlayan ve ondan küçük olan ve
    // her bir döngü içinde i yi bir arttıran için
    //eğer i 5'ten büyükse döngüden çıkılır yani break olur.
    //ama oraya gelinceye kadar tüm değerler print fonksiyonu
    //içerisinde ekrana yazdırılır.
    if (i > 5) {
      break;
    }
    print("i degeri: $i");
  }
}

//Çıktı
/*
Okunan Sayac Degeri: 1
Okunan Sayac Degeri: 2
Okunan Sayac Degeri: 3
Okunan Sayac Degeri: 4
Okunan Sayac Degeri: 5
i degeri: 0
i degeri: 1
i degeri: 2
i degeri: 3
i degeri: 4
i degeri: 5
*/