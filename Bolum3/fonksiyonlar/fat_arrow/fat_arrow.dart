main(List<String> args) {
  int sayi1 = 80, sayi2 = 900;

  int topla = toplaa(sayi1, sayi2);

  int cikar = cikaar(sayi1, sayi2);

  print("Toplam = $topla, Cikarma = $cikar");

  print("Buyuk sayi : " + buyukk(sayi1, sayi2).toString());

  print("Kucuk sayi : " + kucuk_sayi(sayi1, sayi2).toString());
}

// kısa fonksiyon tanımı
int toplaa(int sayi1, int sayi2) => (sayi1 + sayi2);

int cikaar(int sayi1, int sayi2) => (sayi1 - sayi2);

int buyukk(int sayi1, int sayi2) => sayi1 > sayi2 ? sayi1 : sayi2;

int kucuk_sayi(int sayi1, int sayi2) => sayi1 < sayi2 ? sayi1 : sayi2;
