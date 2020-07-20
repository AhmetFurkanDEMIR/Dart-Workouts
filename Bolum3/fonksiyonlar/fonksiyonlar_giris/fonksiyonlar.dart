main(List<String> args) {
  int en = 8, boy = 10, yukseklik = 11;
  cevrehesapla(en, boy);

  int alan = alanhesapla(en, boy);
  print("Dikdörtgenin alanı = $alan");

  double hacim = hacimhesapla(en, boy, yukseklik);

  print("Hacim = " + hacim.toString());
}

// iki adet parametre alıp işlemi ekrana yazdırır.
void cevrehesapla(int en, int boy) {
  print("Dikdötgenin çevresi = ${en * 2 + boy * 2}");
}

// return, fonksiyon geriye değer döndürür.
int alanhesapla(int en, int boy) {
  return en * boy;
}

// double türünde bir değer döndürür.
double hacimhesapla(int en, int boy, int yukseklik) {
  double hacim = (en * boy * yukseklik).toDouble();

  return hacim;
}
