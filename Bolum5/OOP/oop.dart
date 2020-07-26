main(List<String> args) {
  // olusturdugumuz sınıfı yarattık
  Ogrenci hasan = Ogrenci();
  var emre = Ogrenci();

  hasan.adi = "hasan";
  hasan.erkekmi = true;
  hasan.ogrno = 1919;

  // sınıfı fonksiyona ilettik
  yazdir(hasan);

  // kendi yazdıgımmız methodlar
  hasan.ders_calis();
  hasan.uyu();

  yazdir(emre);
}

// sınıfımız
class Ogrenci {
  // instance veya field variable
  // varsayılan degerler atanabilir
  int ogrno = 0;
  String adi = ".";
  bool erkekmi = true;

  void ders_calis() {
    print("$adi adlı ogrenci ders çalısıyor");
  }

  void uyu() {
    print("$adi adlı ogrenci uyudu");
  }
}

void yazdir(Ogrenci ogr) {
  print("Ogrenci adi = ${ogr.adi}");
  print("Ogrenci no =  ${ogr.ogrno}");
  print("Ogrenci erkekmi = ${ogr.erkekmi}");
}
