main(List<String> args) {
  double sayi1 = 80.5;
  double sayi2 = 70;

  /* Dört işlem */

  // toplama
  print("$sayi1 + $sayi2 = ${sayi1 + sayi2}");

  // cikarma
  print("$sayi1 - $sayi2 = ${sayi1 - sayi2}");

  // carpma
  print("$sayi1 * $sayi2 = ${sayi1 * sayi2}");

  // bolme
  print("$sayi1 / $sayi2 = ${sayi1 / sayi2}");

  /* Eşitlikler */

  // büyük esittir
  if (sayi1 >= sayi2) {
    print("$sayi1 >= $sayi2");
  } else {
    print("$sayi2 >= $sayi1");
  }

  // kücük esittir
  if (sayi1 <= sayi2) {
    print("$sayi1 <= $sayi2");
  } else {
    print("$sayi2 <= $sayi1");
  }

  // esittir

  if (sayi1 == sayi2) {
    print("$sayi1 == $sayi2");
  }

  // esit degildir
  if (sayi1 != sayi2) {
    print("$sayi1 != $sayi2");
  }

  // stringler de esitlik
  var isim = "ahmet";
  var soyisim = "demir";

  if (isim == soyisim) {
    print("isim soyisime esittir");
  }

  if (isim != soyisim) {
    print("isim soyisime esit degildir.");
  }

  // atama islemi

  // soldaki degiskeni sagdaki degiskene atar, yani sayi1 i ata degiskenine atar
  
  var ata = sayi1

  /* Mantıksal operatörler */

  // Ve &&

  var sayii = 80;

  var sayii1 = 70;

  // Ve operatöründe iki şartında sağlanması gerkekli
  if (sayii < 81 && sayii1 >= 70) {
    print("yes.");
  }

  // iki sart saglanmadıgı için bu bloga girmez
  if (sayii < 81 && sayii1 > 70) {
    print("no.");
  }

  // Veya ||

  // Şartların herhangi biri sağlansa yeterlidir.
  if (sayii < 81 || sayii1 > 70) {
    print("yes.");
  }

  // Şartların hiçbiri sağlanmazsa bloğa girmez

  if (sayii < 10 || sayii1 > 70) {
    print("no.");
  }

  /* islem önceliği */

  // Normal matematikteki islem önceliği burda da geçerlidir.

  // her seyden önce parantez içi önceliklidir.

  print(sayii * (sayi1 + sayi2) + sayi1);

  // carpma islemi önceliklidir.
  print(sayi1 * sayi2 + sayii);

  // bolme islemi önceliklidir.
  print(sayi1 / sayi2 + sayii);

  // Toplama ve cikarma aynı öncelige sahiptir

  // carpma islemi önceliklidir.
  print(sayi1 - sayi2 + sayii);

  // degisken++

  var deneme = 10;

  // deneme hemen artmaz, sonraki printe yansır, yani ekranda hayla 10 yazdırır.
  print(deneme++);

  // degisken--

  // deneme hemen azalmaz, sonraki printe yansır, yani ekranda hayla 11 yazdırır.
  print(deneme--);

  // ++degisken

  // deneme hemen artar, ilk printe yansır, yani ekranda 11 yazdırır.
  print(++deneme);

  // --degisken

  // deneme hemen azalir, ilk printe yansır, yani ekranda 10 yazdırır.
  print(--deneme);
}
