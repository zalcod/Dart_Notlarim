/*
>Required Parameter: Verilen sayıları mutlaka sırasıyla ve yerine göre yerleştirmemiz gereken
yapıdır.
>Metodlarımıza geçtiğimiz parametrelerin isteğe bağlı olmasını yani verilse de olur
verilmese de olur gibi durumlarda süslü ve köşeli parantez kullanırız.
>Eğer köşeli [] parantez kullanırsak bu ilgili parametrelerin metoda gönderilmesi
zorunluluğunu ortadan kaldırır. Yani opsiyonel hale getirir.
>Opsiyonel parametrelerimizi köşeli parantezler içerisine alırız. Bu şu anlama gelir:
istersek ifade yazarız istersek yazmayız.
>Opsiyonel hale getirdiğimiz değerlerimizde null safety hale getirmek adına method
tanımlarında parametrelere = diyerek varsayılan değerler atayabiliriz. Bu değerler 
sayesinde eğer kullanıcı method parametrelerini atamamışsa bu varsayılan değerler kullanılır.
>Eğer süslü parantez {} kullanırsak burda da parametreler isteğe bağlıdır ama bu 
parametreleri belirtirken sıralama önemini kaybeder ve de parametreleri geçerken isimlerini
vermek zorunda kalırız.
>Opsiyonel parametrelerin işlem içerisi nde null değer alabilmesi için eşittir koyarak
parametreye default bir değer atayabiliriz. Bu değerin yapılacak işleme göre
belirlenmesi önemlidir.
>İsimlendirilmiş Opsiyonel Parametreleri köşeli parantez olmadan süslü parantez içerisinde
belirtmemiz gerekir. Bu parametre bize fonskiyonu çağırdığımızda sayıları istediğimiz
sırada (isimlerini belirtmek şartıyla) çağırmamızı sağlar.
>Parametre listesinde ya süslü parantezleri kullanırız ya da köşeli parantezleri
kullanırız bunların her ikisini aynı liste içerisinde kullanamayız!
>Genelde widgetlarda süslü parantez kullanılıyor.
Örnek Kod ve Notlar:
*/
main(List<String> args) {
/* 
  int toplam = sayilariTopla(4, 5, 6);
  print("Toplam: $toplam");
*/

  /*
  int toplam = sayilariTopla(8, 6, 3); //buradaki 2. ve 3. 
  //değerleri ister yazar ister yazmam. yani opsiyoneldir. yani;
  int toplam2=sayilariTopla(5);
  print ("Toplam: $toplam2"); //şeklinde de yazılabilir
  print("Toplam: $toplam");


  */
  int toplam = sayilariTopla(80, sayi1: 60, sayi3: 40, sayi2: 20);
  //süslü parantez olduğundan değerleri istediğimiz sırada yazabiliriz.
  print("Toplam: $toplam");

  int hacimToplam = hacimHesapla(boy: 50, en: 34, yukseklik: 3);
  print("Hacim Toplamı: $hacimToplam");
}

//required parameter function
/*
int sayilariTopla(int sayi1, int sayi2, int sayi3) {
  return sayi1 + sayi2 + sayi3;
}
 */

//optional parameter function
/*
int sayilariTopla(int sayi1, [int sayi2 = 0, int sayi3 = 0]) {
  return sayi1 + sayi2 + sayi3;
}

*/

//optional named
int sayilariTopla(int sayi4, {int sayi1 = 0, int sayi2 = 0, int sayi3 = 0}) {
  return sayi4 + sayi1 + sayi3 + sayi2; //sayi4 mutlaka verilmeli
  //süslü paranteler değerlerin rasgele atanabileceğini gösterir.
}

int hacimHesapla({int en = 1, int boy = 4, int yukseklik = 50}) =>
    en * boy * yukseklik;

//Çıktı
/*
Toplam: 200
Hacim Toplamı: 5100
*/