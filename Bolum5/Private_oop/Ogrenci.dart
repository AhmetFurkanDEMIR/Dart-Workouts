class Ogrenci {
  // instance veya field variable
  // varsayılan degerler atanabilir
  int _ogrno = 0;
  String adi = ".";
  bool erkekmi = true;

  void ders_calis() {
    print("$adi adlı ogrenci ders çalısıyor");
  }

  void set ogrno_ata(int no) {
    if (no < 0) {
      this._ogrno = 0;
    } else {
      this._ogrno = no;
    }
  }

  int get ogrno_return {
    return _ogrno;
  }

  void uyu() {
    print("$adi adlı ogrenci uyudu");
  }
}
