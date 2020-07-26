main(List<String> args) {
  /*
  Ogrenci hasan = Ogrenci();

  hasan.adi = "hasan";
  hasan.erkekmi = true;
  hasan.ogrno = 1919;

  */

  var asena = Ogrenci("asena", 1818, false);

  asena.ders_calis();

  var mehmed = Ogrenci.cinsiyet_bilgisi_olamayan("mehmed", 1313);

  mehmed.uyu();

  var ates = Ogrenci.no_olmayan("ates", false);

  ates.ders_calis();
}

// sınıfımız
class Ogrenci {
  // instance veya field variable
  // varsayılan degerler atanabilir
  int ogrno = 0;
  String adi = ".";
  bool erkekmi = true;

  /*
  // kurucu constructor method. iki kurucu aynı anda çalışamaz.
  Ogrenci() {
    print("Ogrenci sinifindan bir nesne üretiliyor, beni tetikledi");
  }
*/

  // kurucu methodumuz
  Ogrenci(String ad, int no, bool cinsiyet) {
    this.ogrno = no;
    this.adi = ad;
    this.erkekmi = cinsiyet;
  }

  Ogrenci.cinsiyet_bilgisi_olamayan(String ad, int no) {
    this.adi = ad;
    this.ogrno = no;
  }

  Ogrenci.no_olmayan(String ad, bool cinsiyet) {
    this.adi = ad;
    this.erkekmi = cinsiyet;
  }

  void ders_calis() {
    print("$adi adlı ogrenci ders çalısıyor");
  }

  void uyu() {
    print("$adi adlı ogrenci uyudu");
  }
}
