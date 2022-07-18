/*
>Ardarda if else kullanımı zordur. Bu yüzden switch yapısını kullanırız.
>Her bir koşul için case yani durumlar açarız. Ve bunu switch fonksiyonu içerisine tanımladığımız değer içinde açarız yani case'ler switchlerin içindedir.
>Her bir case'den sonra break denilerek switch yapısından çıkılmalıdır.
>switch kullanırken sadece int ve string veri türleri kullanılır, boolean ve double kullanılmaz.
>default: Eğer yukarıda verilen hiç bir koşul çalışmazsa beni çalıştır anlamında gelir.
Örnek Kod ve Not
*/
main(List<String> args) {
  String notDegeri = "FF";

  switch (notDegeri) {
    case "AA":
      print("Notunuz 90 ile 100 aralığındadır.");
      break;
    case "BA":
      print("Notunuz 80 ile 90 aralığındadır");
      break;
    case "BB":
      print("Notunuz 70 ile 80 arasındadır");
      break;
    case "CB":
      print("Notunuz 60 ile 70 arasındadır");
      break;
    case "CC":
      print("Notunuz 50 ile 60 arasındadır.");
      break;
    case "FF":
      print("Notunuz 50den düşük, çalışmanız gerekiyor.");
      break;

    default:
      {
        print("Hatalı değer girildi");
      }
  }

  var yas = 22.6;
  /*double değer kullanılmıyor
  switch(yas){

    case 18.8:
    print("yasınız 18");
    break;

    case 22.5:
    print("yasınız 22");
    break;

    default : {
      print("Bilinmeyen değer");
    }

  }
*/

  print("**********************************************");

  int sayi = 123;
  int bolum = (sayi / 10).toInt();
  switch (bolum) {
    case 9:
      print("Sayınız 90'dan büyüktür");
      break;
    case 8:
      print("Sayınız 80'den büyüktür");
      break;
    case 7:
      print("Sayınız 70'den büyüktür");
      break;
    case 6:
      print("Sayınız 60'dan büyüktür");
      break;
    case 5:
      print("Sayınız 50'den büyüktür");
      break;
    case 4:
      print("Sayınız 40'den büyüktür");
      break;
    case 3:
      print("Sayınız 30'dan büyüktür");
      break;
    case 2:
      print("Sayınız 20'den büyüktür");
      break;
    case 1:
      print("Sayınız 10'den büyüktür");
      break;
    case 0:
      print("Sayınız 10'dan küçüktür");
      break;
    default:
      {
        print("100'den büyük değer girdiniz");
      }
  }
}

//Çıktı
/*
Notunuz 50den düşük, çalışmanız gerekiyor.
**********************************************
100'den büyük değer girdiniz
*/