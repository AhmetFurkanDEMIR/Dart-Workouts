main(List<String> args) {
  var sayi1 = -300;
  var sayi2 = -21;

  int enb;
  int enkc;

  // kısa if
  sayi1 > sayi2 ? enb = sayi1 : enb = sayi2;

  enkc = (sayi2 < sayi1) ? sayi2 : sayi1;

  print("Büyük sayi : " + enb.toString());

  print("Küçük sayi = $enkc");

  String isim = "Ahmet";
  String soyisim;

  soyisim = (soyisim == null) ? " " : soyisim;
  isim = (soyisim == null) ? " " : isim;

  print("Merhaba $isim $soyisim");

  isim = null;
  soyisim = "Demir";

  // null döndürmeyen kısmı alır.
  String mesaj = isim ?? soyisim;

  print("Hoş geldin $mesaj");
}
