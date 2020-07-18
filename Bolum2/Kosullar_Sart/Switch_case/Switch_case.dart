main(List<String> args) {
  print("\n\n   --Demir.ai--\n\n    1-) Satış\n\n    2-) Alış\n\n    3-)Toptan"
      "\n\n    4-) Çıkış");

  var secim = 5;

  switch (secim) {
    case 1:
      print("Satıs");
      break;

    case 2:
      print("Alıs");
      break;

    case 3:
      print("Toptan");
      break;

    case 4:
      print("Cıkıs");
      break;

    default:
      print("Hatalı giris");
      break;
  }

  // 2. Örenek

  var sayi = 25;
  var aralik = (sayi / 10).toInt();

  switch (aralik) {
    case 1:
      print("sayi 10 dan büyük");
      break;

    case 2:
      print("sayi 20 den büyük");
      break;

    case 3:
      print("sayi 30 dan büyük");
      break;

    case 4:
      print("sayi 40 dan büyük");
      break;
  }

  String stringg = "AA";

  switch (stringg) {
    case "AA":
      print("strin AA dır");
      break;

    case "BB":
      print("String BB dir");
      break;
  }
}
