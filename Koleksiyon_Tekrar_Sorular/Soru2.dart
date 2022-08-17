//2.SORU
//Keyleri string, değerleri dynamic olan bir map oluşturun.
//Bu map yapısında bilgisayarınızın işlemci çekirdek sayısını, ram
//miktarını ve ssd olup olmadığı bilgisini tutun ve ekrana yazdırın.

main(List<String> args) {
  Map<String, dynamic> bilgi = {};
  bilgi['İşlemci Çekirdek Sayısı'] = 16;
  bilgi['Ram Miktarı'] = 8;
  bilgi['SSD Var Mı?'] = true;

  for (var oankiEntry in bilgi.entries) {
    print("${oankiEntry.key} : ${oankiEntry.value}");
  }
}

//Çıktı
/*
İşlemci Çekirdek Sayısı : 16
Ram Miktarı : 8
SSD Var Mı? : true
*/