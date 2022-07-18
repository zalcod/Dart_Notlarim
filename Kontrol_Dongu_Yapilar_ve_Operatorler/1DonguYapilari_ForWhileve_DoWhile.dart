/*
>Tekrar eden işlemler için döngülerden faydalanırız. Yapılan işlemler aynı olsa da
3 temel döngü çeşidi vardır ve kullanım amaçları farklılık gösterir.
>for: İçin demektir. Genelde tekrar sayısı bilinen durumlarda kullanırız.
Gelişmiş for döngüsü ile de bir dizi veya listenin tüm elemanları okunabilir.
Örnek gösterim:

for(dongude_kullanilacak_kontrol_degiskeninin_baslangic_degeri ; 
  dongunun_bitme_sarti; her_dongu_sonunda_yapilacak_islem)
  for(var i=0; i<10; i++)
Ayrıca gelişmiş for döngüsü ile de bir dizi veya listenin tüm elemanları 
okunabilir
for(String isim in isimlerListesi){
  print(isim);
}

>while: Olduğu sürece anlamını taşır. Öncelikle şartı kontrol edip sonra işlem
yaptırmak istiyorsanız ve kaç kere çalışacağını bilmiyor olduğumuz durumlarda kullanırız.
Bir koşul, doğru olduğu sürece yapılacak işlemler için kullanılan döngü çeşididir.
Örnek Gösterim:

while(sayac < 10){ 
    yapılacak islem;
    sayac ++;
    }

>Not: Her "i" değerinin ömrü kendi fonksiyonu içindedir.
>Döngü kullanımlarında break ve continue anahtar kelimelerini kullanacağımız durumlar olabilir.
>break: Döndürülen(çalışan) döngüden çıkılması için kullanılan komuttur.
>continue: Belirtilen yerde herhangi bir işlem yapma başa döndür. Döngü çalışırken
belli bir durumda tekrar başa dönmesini sağlar.
>Döngülerde label yani etiketler kullanılabilir. Böylece birden fazla döngüyü
bu etiketlerle kontrol edebiliriz. Etiketlerle beraber break ve continue
kelimeleri kullanılabilir. 
Örnek Kullanım;

label : for(....){
  break label;
}

>print fonksiyonu continue veya break'ten önce yazılırsa şarta ikinci gezmede bakılır
ve ona göre ekrana yazdırılır. Ancak Print bu ifadelerden sonra yazılırsa ekrana doğrudan
belirtilen sınırlar ilk döngüde yazdırılır.
Örnek Kod ve Notlar;

*/
main(List<String> args) {
  for (int i = 0; i <= 10; i++) {
    //Bu ifade şu anlama gelmektedir;
    // int i değeri sıfırdan başlayıp 10'dan küçük oluncaya kadar her seferinde
    //bir arttırılır.
    if (i % 2 == 0) {
      //eğer i değerinin modu sıfırsa 
      print("$i");
      //i yi ekrana yazdır.
    }
  }
}
//çıktı
/*
0
2
4
6
8
10
*/