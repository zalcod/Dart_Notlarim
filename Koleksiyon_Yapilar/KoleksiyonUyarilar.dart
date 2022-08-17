/*
 - `Map`’lerin gösterimlerinden biri de süslü parantez olduğundan biz `var` ile bir süslü parantezli yapı oluşturduğumuzda aslında içi boş bir `Map` oluşturmuş oluruz ancak içerisine bir değer atarsak bu yapı `Set` yapısına dönüşür eğer belirtilen değere bir key-value ilişkisi verirsek bu sefer tekrardan bir `Map` olur.
- Aslında `set,Map, List` yapılarının hepsi iterable’dır yani yinelenebilir birbirleriyle ilişkileri bulunur.
- `.addAll` metodunu bu yapılar ile kullanabiliriz. Tabiki her biri kendi türünden yapıyla işlem yapar.
- spreads (`...tekSayilar`) operatörünü, birleştirmek istediğimiz yapıları tek bir yapı içerisinde sonYapı’yi oluştururken kullanıyoruz.
- Örnek Kod ve Notlar:
 */
void main(List<String> args) {
  var listem = <String>[];
  var myMap = <String, dynamic>{'yas': 34};
  var mySet = <String>{'emre', 'hasan'};

  var tekSayilar = [4, 3, 5];
  var ciftSayilar = [4, 5, 2, 8];

  //spreads operator
  var sonListe = [...tekSayilar, ...ciftSayilar];
  //yukarıdaki ifade aslında aşağıdaki ifade ile aynıdır.
  /*
 sonListe.addAll(tekSayilar);
 sonListe.addAll(ciftSayilar);
  */
  var map1 = {'ad': 'zal'};
  var map2 = {'yas': 22};
  var sonMap = {...map1, ...map2};

  var set1 = {'leonardo'};
  var set2 = {'zal'};
  var set3 = {'dali'};
  var set4 = {'salvador'};

  var sonSetYapisi = {...set1, ...set2, ...set3, ...set4};
  print(sonListe);
  print(sonMap);
  print(sonSetYapisi);
  //görüldüğü gibi spreads opertörü ile kendi türünden olan koleksiyonları
  //tek bir yapıda toplayabiliyoruz.
}

//Çıktı
/*
[4, 3, 5, 4, 5, 2, 8]
{ad: zal, yas: 22}
{leonardo, zal, dali, salvador}
*/