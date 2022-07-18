main(List<String> args) {
  for (int i = 0; i < 10; i++) {
    if (i > 5) {
      print("Continue i değeri: $i");
    } else {
      print("i değeri 5'den küçük olduğu için herhangi bir işlem yapılmayacak");
      continue;
    }
  }
}

//Çıktı
/*
i değeri 5'den küçük olduğu için herhangi bir işlem yapılmayacak
i değeri 5'den küçük olduğu için herhangi bir işlem yapılmayacak
i değeri 5'den küçük olduğu için herhangi bir işlem yapılmayacak
i değeri 5'den küçük olduğu için herhangi bir işlem yapılmayacak
i değeri 5'den küçük olduğu için herhangi bir işlem yapılmayacak
i değeri 5'den küçük olduğu için herhangi bir işlem yapılmayacak
Continue i değeri: 6
Continue i değeri: 7
Continue i değeri: 8
Continue i değeri: 9
*/