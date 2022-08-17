//SORU 5
/*
Kullanıcıdan aldığınız integer pozitif sayıları bir listede tutun, kullanıcı
-1 değerini girdiğinde girilen sayıların ortalamasını ekrana yazdırın.
*/
import 'dart:io';

main(List<String> args) {
  int girilenNot = 0;
  List<int> girilenNotlar = <int>[];
  //List<int> girilenNotlar2=List.empty(growable:true);
  do {
    print("Lütfen Notunuzu Giriniz, Çıkış İçin -1'e Basınız");
    girilenNot = int.parse(stdin.readLineSync()!);
    if (girilenNot != -1) {
      girilenNotlar.add(girilenNot);
    }
  } while (girilenNot != -1);
  print("Kaç tane not girildi ${girilenNotlar.length}");
  double ortalama = listeninOrtalamasiniBul(girilenNotlar);
  print("Notların ortalaması $ortalama");
}

double listeninOrtalamasiniBul(List<int> liste) {
  int toplam = 0;
  for (int i = 0; i < liste.length; i++) {
    toplam = toplam + liste[i];
  }
  return toplam / liste.length;
}

//Çıktı (Terminalden Alındı Çıktı)
/*
Lütfen Notunuzu Giriniz, Çıkış İçin -1'e Basınız
60
Lütfen Notunuzu Giriniz, Çıkış İçin -1'e Basınız
50
Lütfen Notunuzu Giriniz, Çıkış İçin -1'e Basınız
32
Lütfen Notunuzu Giriniz, Çıkış İçin -1'e Basınız
48
Lütfen Notunuzu Giriniz, Çıkış İçin -1'e Basınız
49
Lütfen Notunuzu Giriniz, Çıkış İçin -1'e Basınız
-1
Kaç tane not girildi 5
Notların ortalaması 47.8
*/