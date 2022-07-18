/* 
>İf ve else yapıları ile programlarımızı dallandırıp yönlendirebiliriz. Eğer koşullar sağlanıyorsa veya sağlanmıyorsa belli kod bloklarının çalıştırılmasını sağlamak için if yapısı kullanılır. 
>if fonksiyonun parantezi içerisine işlemler yazılır.
>Doğru ise if'in ilk printine yanlışsa else'in printine gider.
>else: Değilse anlamına gelir.
>else if: Yok değilse anlamına gelir. (Genelde üçüncü bir ihtimal söz konusu ise kullanılır.)
>&&: ve de anlamına gelir.
>else if'leri altalta sıralayabiliriz.
Genel Kullanım Şöyledir:

if(saglanması gereken şart){
  verilen şart sağlanmışsa çalısacak blok
}else if(yukarıdaki şart doğru değilse çalışır ve koşulumuz yazılır.){
  verilen şart sağlanmamışsa çalışacak blok
}else if(yukarıdaki şart doğru değilse çalışır ve koşulumuz yazılır.){
  verilen şart sağlanmamışsa çalışacak blok
}else{
  verilen şart sağlanmamışsa çalışacak blok
}

bu yapıda herhangi bir if blogunda kod calıstırılırsa alttaki şartlara bakılmaz ve program; son else kısmından sonra gelen süslü parantezlerden sonra çalışmaya devam eder
*/
main(List<String> args) {
  int sayi1 = 45;
  num sayi2 = 34;
  //var sayi3 = 78;

  if (sayi1 > sayi2) {
    print("$sayi1 sayısı $sayi2 sayısından büyüktür");
  } else {
    print("$sayi1 sayısı $sayi2 sayısından küçüktür ");
  }

  print("******************************************************");

  if (sayi1 < sayi2) {
    print("$sayi1 sayısı $sayi2 sayısından küçüktür");
  } else if (sayi2 < sayi1) {
    print("$sayi2 sayısı $sayi1 sayısından küçüktür");
  } else {
    print("Verdiğiniz sayılar birbirine eşittir");
  }

  print("***********************************************************");

  int notDegeri = 0;

  if (notDegeri >= 90 && notDegeri <= 100) {
    print("Notunuz: AA");
  } else if (notDegeri >= 80 && notDegeri < 90) {
    print("Notunuz: BA");
  } else if (notDegeri >= 70 && notDegeri < 80) {
    print("Notunuz: BB");
  } else if (notDegeri >= 60 && notDegeri < 70) {
    print("Notunuz: CB");
  } else if (notDegeri >= 50 && notDegeri < 60) {
    print("Notunuz: CC");
  } else if (notDegeri >= 40 && notDegeri < 50) {
    print("Notunuz: DC");
  } else if (notDegeri >= 30 && notDegeri < 40) {
    print("Notunuz: DD");
  } else if (notDegeri >= 20 && notDegeri < 30) {
    print("Notunuz: FD");
  } else if (notDegeri >= 10 && notDegeri < 20) {
    print("Notunuz: FF");
  } else if (notDegeri > 0 && notDegeri < 10) {
    print("Notunuz: FF");
  }else if (notDegeri == 0 ) {
    print("Notunuz: Sıfır");
  } else {
    print("Hatalı bir değer girişi yaptınız.");
  }
}


//Çıktı
/*
45 sayısı 34 sayısından büyüktür
******************************************************
34 sayısı 45 sayısından küçüktür
***********************************************************
Notunuz: Sıfır
*/