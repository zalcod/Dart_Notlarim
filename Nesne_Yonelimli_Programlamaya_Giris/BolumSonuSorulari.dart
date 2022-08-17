//SORU 1
/* 
CemberDaire isimli sınıf oluşturun. Bu sınıfın
yarıçap alan kurucusu olmalı. Ayrıca çevre ve alanı
hesaplayan metotlar olmalı.(Pi Sayısı 3.14)
*/
main(List<String> args) {
  CemberDaire c1=CemberDaire(4);
  print("Çevre : ${c1.cevreHesapla()}");
  print("Alan : ${c1.alanHesapla()}");
}

//Çıktı
/*
Çevre : 25.12
Alan : 50.24
*/

//Aşağıdaki yapı ayrı dosyada tutulur.
//Çember Hesaplamaları Dosyası (cember_daire.dart)
class CemberDaire {
  int _yariCap=1;
  double _PI =3.14;
//İlk olarak oluşturduğumuz class'ta yarı çap için default değer atadık
//ve pi değerini yerleştirdik
  CemberDaire(int yariCap){
    _yariCapKontrol=yariCap;
    //ardından yarı çapımızın girildiği değeri bir set yapısında
    //kontrol ettirmek için private bir değişkene atıyoruz.
  } 

  void set _yariCapKontrol(int deger){
    //private değişkenimizi set yapısı içerisine alıp if döngüsüne
    //alıyoruz.
    if (deger>0){
      _yariCap=deger;
    }else{
      _yariCap=1;
    }
  }

  double cevreHesapla(){
    //double metot içinde çevreyi hesaplıyoruz
    return 2*_PI*_yariCap;
  }

  double alanHesapla(){
    //double metot içerisinde alan hesaplıyoruz 
    return _PI * _yariCap * _yariCap;
  }
  
}