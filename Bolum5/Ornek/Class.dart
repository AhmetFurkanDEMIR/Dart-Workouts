class Calisan {
  String _ad_soyad;
  String _tc;
  String _no;
  double _maas;
  int _aile_ferd;

  Calisan(this._ad_soyad, this._tc, this._no, this._maas, this._aile_ferd);

  String get ad_soyad => _ad_soyad;
  set ad_soyad(String value) => _ad_soyad = value;

  String get tc => _tc;
  set tc(String value) => _tc = value;

  String get no => _no;
  set no(String value) => _no = value;

  double get maas => _maas;
  set maas(double value) {
    if (value <= 0) {
      this._maas = 2400;
    } else {
      this._maas = value;
    }
  }

  int get aile_ferd => _aile_ferd;
  set aile_ferd(int value) {
    if (value <= 0) {
      this._aile_ferd = 1;
    } else {
      this.aile_ferd = value;
    }
  }

  String sergile() {
    String a = """ 
    
    Ad, Soyad = $_ad_soyad

    T.C no = $_tc

    No = $_no

    Maaş = $_maas

    Aile ferdi sayısı = $_aile_ferd    
    
    """;

    return a;
  }

  void zam_yap(double miktar) {
    if (miktar <= 0) {
      print("\n\n    Zam yapılamadı ...");
    } else {
      _maas = miktar;
      _maas += aile_ferd * 30;
      print("\n\n    Zam başarı ile yapıldı ...");
    }
  }
}
