// dart dilinde getter ve setter otoamatik tanımlanır.
// lakin kendi getter ve setter methodlarımızıda yazabiliriz.

main(List<String> args) {
  var ahmed = Ogrenci();

  ahmed.adi = "ahmed";
  ahmed.erkekmi = true;
  ahmed.ogrno_ata = -90;
  print(ahmed.ogrno_oku);
}

// sınıfımız
class Ogrenci {
  // instance veya field variable
  // varsayılan degerler atanabilir

  // degiskenin önüne _ koyarak private hale getiririz.
  int _ogrno = 0;
  String adi = ".";
  bool erkekmi = true;

  void set ogrno_ata(int no) {
    if (no <= 0) {
      this._ogrno = 0;
    } else {
      this._ogrno = no;
    }
  }

  int get ogrno_oku {
    return _ogrno;
  }

  void ders_calis() {
    print("$adi adlı ogrenci ders çalısıyor");
  }

  void uyu() {
    print("$adi adlı ogrenci uyudu");
  }
}
