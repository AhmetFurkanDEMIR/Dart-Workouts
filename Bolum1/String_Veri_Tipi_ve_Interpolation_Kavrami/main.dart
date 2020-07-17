main(List<String> args) {
  String isim = "Ahmet Furkan";
  String soyisim = 'Demir';
  print(isim + soyisim);

  String kurs = "dart \'ın kullanımı";
  print(kurs);

  print("$isim " + soyisim); // string içine degisken eklemek

  // length karakter uzunluğu
  print("Benim adımda bulunan karakter sayısı : ${isim.length}");

  print("Benim soyadımda bulunan karakter sayısı : ${soyisim.length}");

  print("\n\n çok uzun bir yazı olacağım ben çok uzun bir yazı olacağım ben"
      "çok uzun bir yazı olacağım ben çok uzun bir yazı olacağım ben \n\n ");

  int sayi1 = 88;
  double sayi2 = 58.8;

  // herhangi bir sayıyı x.toString() şeklinde string hale getirebiliriz.
  print("Aklımdan tuttuğum ilk sayi : " +
      sayi1.toString() +
      ", ikinci sayi : $sayi2");

  double en = 10;
  double boy = 12;

  print(
      "Eni $en, Boyu $boy olan dikdörtgenin alanı = " + (en * boy).toString());
}
