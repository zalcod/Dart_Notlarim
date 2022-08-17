	/*
  - `Map` yapısı da set gibi sırasız bir şekilde elemanları saklayan bir koleksiyon öğesidir.
- Bu yapıyı listelerden ve setten ayıran özellikler ise elemanları key-value olarak saklamasıdır.
- Herhangi bir veri türü kullanılabilir ama burada önemli olan key değerlerin unique yani eşsiz olması gerekmektedir.
- `Map` yapısını sözlüğe benzetebiliriz. Tıpkı sözlük gibi birbirinden farklı elemanları içerir.
- Sabit uzunlukta değildir, dinamik uzunluğa sahiptir.
- `Map` yapısında değerlerimiz key-value şeklinde tutulur.
- Süslü parantezleri görünce aklımıza `Map` yapısı gelmesi gerekiyor.
- İnternetten veri çekerken `.json` şeklinde çekeceğiz ve orada da doğrudan `Map` yapısını kullanıyoruz.
- Not: Değişken türlerinde, `dynamic` yerine `object` kelimesini de kullanabiliriz. `Map`’lerde genellikle String ile dynamic kullanacağız.
- Not:
    - `Map<String, dynamic> deneme = Map();`
    - `Map<String, dynamic> deneme2 = {};`
    
    bu iki şekilde de `Map` yapısını gösterebiliriz.
    
- Not: `For` döngüsünde bir değere atama yapılırken herhangi bir isim verip değerini atayacağımız yapıyı belirtiyoruz. Bunu yaparken değeri çekeceğimiz yapıya `in` ile giriyoruz. örn:
`String oAnkiDeger in degerinCekildigiYer`
- `key` ve `values` olarak `for` yapısı içerisinde elemanları gezebiliriz.
- Bir de çift halinde `Map`teki elemanları tutan bir yapımız vardır. Onlara da `entries` deniyor.
- `Map`lerde de `contains`kullanılır.

Örnek Kod ve Notlar:
   */
  main(List<String> args) {
  Map<String, int> alanKodlari = {"adana": 0100, "mersin": 3300, "bursa": 1600};
  //Burada string key ve int value'dan oluşan bir Map oluşturduk.
  print(alanKodlari);
  print(alanKodlari[
      "bursa"]); //köşeli parantez içerisinde key girip value buluyoruz

  Map<String, dynamic> zal = {"soyad": "solmuş", "yaş": "22", "bekarMi": true};

  List sayilar = [0, 1, 2];

  Map<String, dynamic> deneme = Map();
  Map<String, dynamic> deneme2 = {};

  deneme2['yas'] = 55; //bu yöntemle Map'in içerisine eleman ekliyoruz.
  print(deneme2);
  print("********************************************************");
  print(zal['yaş']);
  print("**************************************************************");
  for (String oankiAnahtar in zal.keys) {
    //oankiAnahtar adında oluşturduğumuz for yapısı zal mapindeki key'leri
    //önce anahtar sonra değer olarak tarar ilk map elemanı tarandıktan sonra
    //sonraki elemana geçer yani önce keyleri sonra valueları yazdırmaz.
    print(oankiAnahtar); //key
    print(zal[oankiAnahtar]); //value

  }
  print("************************************************************");
  for (dynamic deger in zal.values) {
    //valuelarımız dinamik olduğundan
    //for döngüsünü dinamik oluşturduk.
    print(deger);
  }
  print("************************************************************");
  for (var element in zal.entries) {
    //entries metodumuz ile kolayca
    //key ve value değerlerimizi gezebiliyoruz.
    print("Key: ${element.key} değeri: ${element.value}");
  }
  print("************************************************************");

  if (zal.containsKey('yaş')) {
    //Contains sorgulama için kullanılır
    //containsKey doğal olarak böyle bir anahtar değer var mı anlamı taşır.
    print("Bulunan yaş değeri ${zal['yaş']}");
  }
  print("***********************************************************");
  print(zal);
}

//Çıktı
/*
{adana: 100, mersin: 3300, bursa: 1600}
1600
{yas: 55}
********************************************************
22
**************************************************************
soyad
solmuş
yaş
22
bekarMi
true
************************************************************
solmuş
22
true
************************************************************
Key: soyad değeri: solmuş
Key: yaş değeri: 22
Key: bekarMi değeri: true
************************************************************
Bulunan yaş değeri 22
***********************************************************
{soyad: solmuş, yaş: 22, bekarMi: true}
*/