main(List<String> args) {
  var kare1 = Kare();

  kare1.en = 8;
  kare1.boy = 8;

  print(kare1.alan_hesapla());

  Dikdortgen dk1 = Dikdortgen();

  dk1.boy = 251.8;
  dk1.en = 800;

  print(dk1.alan_hesapla());

  dk1.mesaj();
}

// abstract sınıf
// gövdesi olmayan sadece tanımlı olan sınıflar

abstract class Dortgen {
  double en;
  double boy;

  void mesaj() {
    print("en : $en , boy : $boy");
  }

  void alan_hesapla();

  void cevre_hesapla();
}

// abstract sınıftan tanımlanmış yeni sınıf
class Dikdortgen extends Dortgen {
  @override
  double alan_hesapla() {
    return (en * boy).toDouble();
  }

  @override
  double cevre_hesapla() {
    return (2 * (en + boy)).toDouble();
  }
}

// abstract sınıftan tanımlanmış yeni sınıf
class Kare extends Dortgen {
  @override
  double alan_hesapla() {
    return (en * boy).toDouble();
  }

  @override
  void mesaj() {
    // TODO: implement mesaj
    super.mesaj();
  }

  @override
  double cevre_hesapla() {
    return (2 * (en + boy)).toDouble();
  }
}
