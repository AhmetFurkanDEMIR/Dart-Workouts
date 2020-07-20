main(List<String> args) {
  // kendi hatamızı yakaladık
  try {
    para_yatir(-10);
  } catch (e) {
    print(e.hata_goster());
  }
}

void para_yatir(int miktar) {
  if (miktar <= 0) {
    // hata sınıfı yarattık
    throw new ParaYatirException();
  } else {
    print("Hesabınıza $miktar TL yatırıldı");
  }
}

// hata sınıfı
class ParaYatirException implements Exception {
  String hata_goster() => "Negatif sayi girdiniz.";
}
