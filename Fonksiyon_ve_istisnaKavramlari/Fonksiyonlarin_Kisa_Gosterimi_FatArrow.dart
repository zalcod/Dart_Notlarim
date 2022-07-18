/*
>Metodumuz eğer tek bir satırlık statement yani tek satırlık bir ifade barındırıyorsa
"Fat Arrow" Kullanırız.
>Fat Arrow ile gösterimde süslü parantezler ve return ifadesini kullanmayız.
>Fonksiyonlarımız print içerisinde çağırabiliriz.
Örnek Kod:

*/
void main(List<String> args) {
  sayilariTopla();

  print("**************************************************");

  int fark = sayilariCikar(4, 8);
  print("Sayıları Çıkar Değerimiz: $fark");

  print("**************************************************");

  print("Sayılar Çarpımı: " + sayilariCarp(4, 5).toString());

  print("**************************************************");

  print("En Fazla Olan Sayımız: " + enFazlaOlaniBul(8, 90).toString());

  print("**************************************************");

  print("Maximum Değerimiz: " + maxOlaniBul(56, 23).toString());

  print("*****************************************************");

  print("Minimum Değerimiz: " + minOlaniBul(34, 12).toString());
}

//parametre almayan fonksiyon
void sayilariTopla() {
  int sayi1 = 10, sayi2 = 15;
  print("Sayılar Toplamı: ${sayi1 + sayi2}");
}

sayilariCikar(int s1, int s2) {
  return s1 - s2;
}

//parametreli ve fat arrow gösterimli fonksiyon
int sayilariCarp(int s1, int s2) => s1 * s2;

int enFazlaOlaniBul(int s1, s2) {
  if (s1 < s2) {
    return s2;
  } else {
    return s1;
  }
}

int maxOlaniBul(int s1, int s2) => (s1 < s2) ? s2 : s1;
//bu ifade şu demektir s2 büyükse s2 yi değilse s1 return et.

int minOlaniBul(int s1, int s2) => (s1 < s2) ? s1 : s2;
//bu ifade şu demektir s1 küçükse s1'i değilse s2 return et.


//Çıktı
/*
Sayılar Toplamı: 25
**************************************************
Sayıları Çıkar Değerimiz: -4
**************************************************
Sayılar Çarpımı: 20
**************************************************
En Fazla Olan Sayımız: 90
**************************************************
Maximum Değerimiz: 56
*****************************************************
Minimum Değerimiz: 12
*/