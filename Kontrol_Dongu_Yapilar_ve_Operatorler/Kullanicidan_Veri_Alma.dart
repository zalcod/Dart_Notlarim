/*
>Öncelikle kullanıcıdan veri almak için debug aldığımız konumu launjh.json dosyasına 
giderek "connsole": "terminal", yaparak düzenliyoruz.
>"stdin.readLinesync();" komutu ile çalıştırılır.
>Değerimizin çeşidine göre veri türünü atarız ve sonuna null değer olması ihtimaline 
karşı soru işareti koyarız.
>Terminale yazılan veriyi istediğimiz veri tipine dönüştürmek için parse ediyoruz.
Örnek Kod ve Notlar:
*/
import 'dart:io';

main(List<String> args) {
  print("adınızı giriniz");
  String? isim = stdin.readLineSync();
  print("girilen isim $isim");

  print("yaşınızı giriniz");
  int? yas = int.parse(stdin.readLineSync()!);
  yas = yas + 5;
  print("yaşınız $yas");
}