/*
SORU1: Parametre olarak bir tane int sayı alan fonksiyon yazınız.
Bu fonksiyon aldığı değere kadar olan çift sayıların toplamını
geriye döndürsün.

SORU2:Daire alanını hesaplayan fonksiyonu yazınız. PI sayısı
opsiyonel olmalı. Eğer PI sayısı verilmediyse varayılan olarak 
3,14 alarak hesaplama yapın.

SORU3:Bir üçgenin kenarlının isimlendirilmiş parametre olarak alan fonksiyon yazınız.
Bu fonksiyon kenr değerlerine göre bu üçgenin çeşit kenar ikiz kenar veya eşkenar
olduğunu ekrana yazdırsın, geriye bir değer döndürmesin



*/
main(List<String> args) {
  int ciftToplam = ciftSayilarToplaminiBul(11);
  print("Çift Sayıların Toplamı: $ciftToplam");

  double alaniSoyle = daireAlanHesabi(5);
  print("Dairemizin Alanı: $alaniSoyle");

  ucgeninCesidiniSoyle();
}

int ciftSayilarToplaminiBul(int sayi) {
  int toplam = 0; //fonksiyonumuzda toplam diye default bir değer vardır

  for (int i = 0; i < sayi; i++) {
    //int i değerimiz sayi'dan
    //küçük oluncaya kadar i her seferinde bir arttırılır eğer
    //i değeri 2'nin modunda sıfırsa toplam değerimiz o sayıya gelinceye
    //kadar yapılmış toplam ve mevcut i değerimizi birbirine toplayıp
    //return ettirir.
    if (i % 2 == 0) {
      toplam = toplam + i;
    }
  }
  return toplam;
}

double daireAlanHesabi(double yariCap, [double piSayisi = 3.14]) {
  return yariCap * yariCap * piSayisi;
}

void ucgeninCesidiniSoyle(
    //soruda geriye değer döndürülmesin dediği için void yaptık
    {birinciKenar = 1,
    ikinciKenar = 1,
    ucuncuKenar = 8}) {
  if (birinciKenar == ikinciKenar && ikinciKenar == ucuncuKenar) {
    print("Üçgenimiz eşkenar üçgendir.");
  } else if (birinciKenar == ikinciKenar ||
      birinciKenar == ucuncuKenar ||
      ikinciKenar == ucuncuKenar) {
    print("Üçgenimiz ikizkenar üçgendir.");
  } else {
    print("Üçgenimiz çeşit kenar bir üçgendir");
  }
}

//Çıktı
/*
Çift Sayıların Toplamı: 30
Dairemizin Alanı: 78.5
Üçgenimiz ikizkenar üçgendir.
*/