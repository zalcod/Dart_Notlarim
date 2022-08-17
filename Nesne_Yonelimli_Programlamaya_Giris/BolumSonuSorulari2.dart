/* Soru 2
Ogrenci isimli sınıf oluşturun. Bu sınıfta ogrencinin idsi ve not değeri tutulmalı.
100 elemanlı bir listede id ve not değerlerini rastgele oluşturarak bu öğrencileri
saklayın ve bu öğrencileri yazdıran metotu yazın.
*/
//Main Dosyası İçerisindeki Kodlar (odev_soru2_ogrenci.dart)
import 'dart:math';
main(List<String> args) {
  Ogrenci ogr1 =Ogrenci(id: 5, notDegeri: 10);
  List<Ogrenci> tumOgrenciler=List.filled(2, Ogrenci());

  ogrenciListesiniDoldur(tumOgrenciler);
  for (Ogrenci oankiOgrenci in tumOgrenciler){
    print(oankiOgrenci);
  }

  print("Tüm öğrencilerin Ortalaması " + ogrencilerinOrtalamasiniHesapla (tumOgrenciler).toString());

}

void ogrenciListesiniDoldur(List<Ogrenci> liste){
  for (var i = 0; i < liste.length; i++) {
    liste[i]= Ogrenci(id: Random().nextInt(1000), notDegeri: Random().nextInt(100));

  }
}

double ogrencilerinOrtalamasiniHesapla(List<Ogrenci> liste){
  int toplam=0;
  for (Ogrenci oankiOgrenci in liste){
    toplam= toplam + oankiOgrenci.notDegeri;
  }
  return toplam/liste.length;
}

//Çıktı (Random kullandığımız için değerler rastgeledir.)
/*
ID : 796 Not Değeri: 51
ID : 730 Not Değeri: 84
Tüm öğrencilerin Ortalaması 67.5
*/
//Aşağıda ayrı bir dosya da tutulması gereken yapı.
//Öğrenci Class'ının Bulunduğu Dosya (ogrenci.dart)
class Ogrenci {
  int id;
  int notDegeri;

  Ogrenci({this.id=1, this.notDegeri=1});

  @override
  String toString(){
    return "ID : $id Not Değeri: $notDegeri";
  }
  
}