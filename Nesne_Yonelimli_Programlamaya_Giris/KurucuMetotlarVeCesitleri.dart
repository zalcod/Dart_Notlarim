/*
- Bir sınıftan nesne ürettiğimizde ilk tetiklenen yapılardır. Bu yapıları kullanarak nesnelerimizi veri göndererek oluşturabilir, nesneleri kullanmadan önce gerekli atamaları ve ayarları yapabiliriz.
- Farklı türlerde kurucu (constructor) metotlar oluşturabiliriz:
- Sınıfımız main metodunun dışında olması gerekiyor.
- Sınıf adlarından sonra doğrudan süslü parantez gelir.
- Sınıflarımızın yapacağı işleri gösterebileceği fonksiyonlar yazabiliriz sınıfın içerisine.
- `Araba honda = Araba();` dediğimiz zaman bellekte tanımlı arabaya ait bir kutucuk açmış oluyoruz yani artık Araba classındaki özellikleri yerleştirebiliriz belleğe.
- Contructor dediğimiz aslında özel bir metoddur. Birebir sınıf adıyla başlar. Herhangi bir geri dönüş tipi yoktur (void, int, string gibi…).
- Her nesne oluşturulduğunda kurucu metod çalıştırılır.

- **Default Constructor Method (Varsayılan Kurucu Metot):**
    - Sınıf adının yanına `()` dediğimizde çalışan ve de sınıf adıyla aynı olan metoddur.
    - `Ogrenci emre = new Ogrenci()` dediğimizde aslında default kurucu çalışır.
    - Default constructor sınıfın içinde eğer elle yazıp belirtmesek bile `Ogrenci(){}` şeklinde tanımlı olan boş bir metoddur.
    - İstersek Bunu çeşitli durumlar için kullanabiliriz. Bu method her nesne üretiminde ilk olarak çalışan metoddur.
    - Kurucu metodların geri dönüş tipi olmaz.

- **Parameterized Constructor Method (Parametreli Kurucu Metot) :**
    - Aslında default constructorun parametre almış haline denir.
    //Parametreli kurucu metot. Örnek Kod:
    Araba(this.modelyili, this.marka, this.otomatikMi){
    print("Parametreli Kurucu Metot Tetiklendi");
    - Dart dilinde metod overloading olmadığı sadece ya default yapıcı ya da parametreli yapıcı olmalıdır.

- **Named Constructor Method (İsimlendirilmiş Kurucu Metot):**
    - Sınıf İçerisinde `SinifAdi.methodAdi(){buraya kodlar gelir.}`
    - Kargaşayı önlemek adına böyle bir isimlendirme yapmak faydamıza olacaktır.
    - İstediğiniz sayıda isimlendirilmiş kurucu oluşturabilirsiniz.

- **“this” Anahtar Kelimesi ve Kullanım Alanı:**
    - Değişkenlerimizin tıpkı fonksiyonlar gibi bir yaşam alanı vardır. Yani değişkenleri tanımlarken belirttiğimiz süslü parantezlerin içerisinde ancak yaşayabilir bunun dışında tanımlanıp kullanılamazlar.
    - Biz bu durumda gelen değişkenlere metot içerisinde paremetre ataması yapıyoruz. Ancak bu atamaları yaparken isimlendirmeler aynı olması  doğrudan yaparsak sistemin kafası karışır ve hangi paremetreyi hangi değere atayacağını bilemez.
    - Bunu çözmek için `this.` anahtar kelimesini kullanıyoruz. `this.` kullanarak o an oluşturulan `class`’taki değerleri metottaki parametrelere atamış oluyoruz.
    - Parametre ile sınıfın içerisinde tanımladığımız instance veriable’ların isimleri aynıysa bu durumda
    - Kullanıcının verdiği verileri sınıfımızın değişkenlerine atarız ki değerlerin tutulduğu kutunun içi dolu olsun sonradan null hataları almayalım.
    - Biz this’i daha kolay bir yolla da kullanabiliriz. Yani doğrduan kullanıcının verdiği değerleri, sınıfımızın değişkenlerine atarız ki o kutunun içindeki değerler dolu olsun sonradan `null` hataları almayalım demiş oluyoruz.
    - this bizim mevcut koddaki örneğimizde her marka için ayrı ayrı yani reno için reno markasını, honda için honda markasını başka bir marka varsa başka bir marka için o markayı temsil eder. Ve ekrana da sırasıyla da yazdırır.
    
    Not: Ünlem işareti (!), null olamayacak değerlerin null gibi davranmasını sağlar.
    
- Örnek Kod ve Notlar:
*/
main(List<String> args) {
  Araba honda = Araba(2020, "Honda", true);
  /*
  honda.marka = "Honda";
  honda.modelYili = 2020;
  honda.otomatikMi = true; 
  */
  honda.bilgileriSoyle();
  honda.modelYili = 2021;
  honda.bilgileriSoyle();
  print("*********************************************************");
  var reno = Araba(2019, "Reno", false);
  reno.bilgileriSoyle();
  print("***************************************************************");
  var bmw = Araba(2021, "BMW", true);
  bmw.bilgileriSoyle();
  bmw.yasHesapla();
  print("**************************************************************");
  var citroen = Araba.markasizKurucuMetot(false, 2018);
  Araba suzuki = Araba.modelYiliOlmayanKurucuMetot(true, "Suzuki");

  citroen.bilgileriSoyle();
  suzuki.yasHesapla();
  suzuki.bilgileriSoyle();
}

class Araba {
  int? modelYili; //buradaki soru işaretleri modelYili, marka ve otomatikMi
  String? marka; //değerlerinin null olabilmesini sağlar.
  bool? otomatikMi;

//Default Kurucu Metot
  /* Araba() {
    print("Kurucu metot tetiklendi"); 
  }
  
  */

//Parametreli Kurucu Metot
  Araba(this.modelYili, this.marka, this.otomatikMi) {
    print("Kurucu Metot Tetiklendi");
  }

//İsimlendirilmiş Kurucu Metot Örneği
  Araba.markasizKurucuMetot(this.otomatikMi, this.modelYili);

//This Kullanımına Örnek
  Araba.modelYiliOlmayanKurucuMetot(bool otomatikMi, String marka) {
    this.otomatikMi = otomatikMi;
    this.marka = marka;
  }

//Basit bir kurucu metot örneği.
/*
  Araba(int yil, String m, bool o) {
    print("Kurucu metot tetiklendi");
  }

  this.modelYili=modelYili;
  this.marka=marka;
  this.otomatikMi=otomatikMi; //Görüldüğü gibi her bir parametreye ismi aynı olan değişkenleri atayıp kafa karışıklığını ortadan kaldırdık.

//Eğer kurucu metodun içindeki parametrelerin isimlerini değiştirseydik this kullanmadan şöyle gösterirdik;
  modelYili= yil;
  marka= m;
  otomatikMi= o;

*/
  void bilgileriSoyle() {
    //Geriye değer döndüren basit bir parametre.
    print(
        "Arabanın model yılı ${modelYili}, Markası: ${marka}, Otomatik Mi?: ${otomatikMi}");
  }

  void yasHesapla() { //Yaş hesabı yapan basit bir parametre. 
    if (modelYili != null)
      print("Arabanın Yaşı ${2021 - modelYili!}");
    else
      print("Model yılı olmadığından yaş hesaplanamadı");
  }
}

//Çıktı
/*
Kurucu Metot Tetiklendi
Arabanın model yılı 2020, Markası: Honda, Otomatik Mi?: true
Arabanın model yılı 2021, Markası: Honda, Otomatik Mi?: true
*********************************************************
Kurucu Metot Tetiklendi
Arabanın model yılı 2019, Markası: Reno, Otomatik Mi?: false
***************************************************************
Kurucu Metot Tetiklendi
Arabanın model yılı 2021, Markası: BMW, Otomatik Mi?: true
Arabanın Yaşı 0
**************************************************************
Arabanın model yılı 2018, Markası: null, Otomatik Mi?: false
Model yılı olmadığından yaş hesaplanamadı
Arabanın model yılı null, Markası: Suzuki, Otomatik Mi?: true
*/