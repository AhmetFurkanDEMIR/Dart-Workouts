main(List<String> args) {
  int sayi1 = -91;
  int sayi2 = 70;
  int sayi3 = -90;

  int enb;
  int ort;
  int enkc;

  if (sayi1 > sayi2) {
    enb = sayi1;
    enkc = sayi2;
  } else {
    enb = sayi2;
    enkc = sayi1;
  }

  if (sayi3 > enb) {
    ort = enb;
    enb = sayi3;
  } else {
    if (sayi3 < enkc) {
      ort = enkc;
      enkc = sayi3;
    } else {
      ort = sayi3;
    }
  }

  print("$enb >= $ort >= $enkc ");
}
