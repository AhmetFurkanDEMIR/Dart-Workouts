main(List<String> args) {
  // bu fonksiyonda, tüm parametreleri eksiksiz girmelisiniz,
  // aksi halde hata alırsınız.
  sehir_yazdir("Sivas", "Konya", "Denizli");

  // bu fonksiyonda parametreler opsiyoneldir.
  // eksik parametrede hata vermez.
  ulke_yazdir("Türkiye", "Sivas");

  // sıra önemli degil, parametre fonksiyondaki degisken ile eşleşir.
  kitalari_yazdir("Asya", a1: "Avrupa", a2: "amerika");

  int carpimm = carpim(sayi1: 70, sayi2: 90);

  print("70 * 90 = $carpimm");
}

void sehir_yazdir(String a0, String a1, String a2) {
  print("-- Sehir --");

  print(a0 + "\n" + a1 + "\n" + a2);

  print("-- --");
}

void ulke_yazdir([String a0, String a1, String a2]) {
  print("-- Ülke --");

  print(a0 + "\n" + a1 + "\n");

  print("-- --");
}

void kitalari_yazdir(String a0, {String a1, String a2}) {
  print("-- Kıta --");

  print(a0 + a1 + a2);

  print("-- --");
}

int carpim({int sayi1, int sayi2}) => (sayi1 * sayi2);
