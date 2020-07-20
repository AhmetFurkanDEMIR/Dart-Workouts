void main(List<String> args) {
  double finall = 60;
  double vize = 40;

  double vize_oran = 0.4;
  double final_oran = 0.6;
  int gecme_not = 60;

  double not = 0;

  try {
    not = hesapla(finall, vize, vize_oran, final_oran);
  } catch (e) {
    print(e.hataa());
  }

  String mesaj = gecme_hesapla(not, gecme_not);

  print(mesaj);
}

double hesapla(
    double finall, double vize, double vize_oran, double final_oran) {
  if (finall < 0 || vize < 0) {
    throw new EksiNotGirme();
  } else {
    return (final_oran * finall) + (vize * vize_oran);
  }
}

String gecme_hesapla(double not, int gecme_not) {
  if (not >= gecme_not.toInt()) {
    return "Tebrikler Dersi Geçtiniz, Notunuz : $not";
  } else {
    return "Dersi geçemediniz, Notunuz : $not";
  }
}

class EksiNotGirme implements Exception {
  String hataa() => "Hata Vize veya Final eksi not olmaz. ";
}
