main(List<String> args) {
  // dinamik list, boyut belirsiz.
  List<int> sayilar = List();

  // 10 e kadar olan sayılari listeye ekledim.
  for (int i = 0; i < 10; i++) {
    sayilar.add(i); // dinamik listede eleman ekleme
  }

  // elemana erişirken köşeli parantez kullanacağız.
  sayilar[0] = -99;

  // son elemana erişmek
  sayilar[sayilar.length - 1] = null;

  print(sayilar);

  sayilar.clear(); // listedeki bütün elemanları siler.

  print(sayilar);

  List<int> sayilar0 = List();

  // 70 e kadar olan sayılari listeye ekledim.
  for (int i = 0; i < 10; i++) {
    sayilar0.add(i); // dinamik listede eleman ekleme
  }

  // listede gördüğü ilk 5 degerini siler.
  // diger 5 degerleri kalır.
  sayilar0.remove(5);

  print(sayilar0);

  // verdiğiniz indexteki elemanı siler.
  sayilar0.removeAt(0);

  print(sayilar0);

  List<String> Ulkeler = List();
  Ulkeler = ["Türkiye", "Azerbaycan"];

  Ulkeler.forEach((element) => print(element));

  // dinamik yapılı
  List<String> Sehirler = ["Sivas", "Bakü"];

  Sehirler.forEach((element) => print(element));
}
