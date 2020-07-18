// 1-) üç adet double deger oluşturup ortalamalarını alınız
// 2-) tanımlanan bir int degiskenin faktöryeli
// 3-) 1 den 100 e kadar 15 e bölüne bilen sayıların karesini yazdırın
// 4-) 0 dan 100 e kadar asal sayıları yazdırın.

main(List<String> args) {
  // 1-)

  double sayi1 = 70;
  double sayi2 = 80;
  double sayi3 = -10.8;

  print("ortalama = ${(sayi1 + sayi2 + sayi3) / 3}");

  // 2-)

  int fakt = 1;
  int sayi = 5;
  int gecici = sayi;

  while (true) {
    fakt *= sayi;
    sayi--;

    if (sayi <= 0) {
      break;
    }
  }

  print("$gecici ! = $fakt");

  // 3-)

  for (int i = 1; i <= 100; i++) {
    if (i % 15 == 0) {
      print(i * i);
    }
  }

  bool kontrol;

  for (int i = 2; i <= 100; i++) {
    kontrol = true;

    for (int z = 2; z < i; z++) {
      if (i % z == 0) {
        kontrol = false;
      }
    }

    if (kontrol == true) {
      print("Asal sayi $i");
    }
  }
}
