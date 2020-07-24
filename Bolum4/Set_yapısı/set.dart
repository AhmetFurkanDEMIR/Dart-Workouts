main(List<String> args) {
  // setin listelerden en büyük farkı aynı elemanlardan sadece
  // bir tane tutar yani unic tir.
  Set<String> isimler = Set();

  isimler.add("Ahmed");
  isimler.add("Ahmed");
  isimler.add("furkan demir");
  isimler.add("furkan demir");
  isimler.add("Ahmed");
  isimler.add("ali hasan");
  isimler.add("Ahmed");
  isimler.add("hasan");
  isimler.add("hasan");

  // aynı olan isimlerden birtane alır.
  // Set yapısının içinde dolaşmak liste yapısı ile tamamen aynıdır.
  isimler.forEach((element) => print(element));

  // Hata verir, index yapısı yoktur, sıralama yoktur.
  // print(isimler[0]);

  bool sonuc = isimler.remove("Ahmed");

  print(sonuc); // set yapısında "Ahmed" var ve sildi

  sonuc = isimler.remove("Ahmeddsa");

  print(sonuc); // set yapısında "Ahmeddsa" yok ve silemedi

  List<String> cekilsi0 = List();

  cekilsi0.add("mehmed");
  cekilsi0.add("mehmed0");
  cekilsi0.add("mehmed0");
  cekilsi0.add("mehmed0");
  cekilsi0.add("mehmed0");
  cekilsi0.add("mehmed1");
  cekilsi0.add("mehmed2");

  Set<String> cekilis = Set();

  // liste yapısını set yapısına aktarır.
  cekilis.addAll(cekilsi0);

  print(cekilsi0);

  print(cekilis);

  Set<int> sayilar = Set.from([8, 9, 6, 5, 4, 1, 1, 1, 1, 1, 1, 5]);

  print(sayilar);
}
