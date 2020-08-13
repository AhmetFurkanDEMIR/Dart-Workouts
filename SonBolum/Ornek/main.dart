main(List<String> args) async {
  Ogrenci ogr1 = Ogrenci("Ahmed", 1919, "1919");
  ogr1.bilgiler();

  print("\n\n --- \n");

  Ogretmen ogt1 = Ogretmen("Mehmed", 2020, "2020", 8000, "Algoritma");
  ogt1.bilgiler();

  print("Ogretmen maas : ${ogt1.maas}");

  Ogretmen ogt2 = await zam(ogt1);

  print("Ogretmen maas : ${ogt1.maas}");
}

Future<Ogretmen> zam(Ogretmen a) {
  Future<Ogretmen> a1 = Future.delayed(Duration(seconds: 5), () {
    a.maas_zam(200);
  });

  return a1;
}

class Ogrenci {
  String ad;
  int no;
  String t_c;

  Ogrenci(this.ad, this.no, this.t_c);

  void bilgiler() {
    print("Ogrenci adi : $ad");
    print("Ogrenci no : $no");
    print("Ogrenci TC no : $t_c");
  }
}

class Ogretmen extends Ogrenci {
  double maas;
  String ders;

  Ogretmen(String ad, int no, String t_c, double maas, String ders)
      : super(ad, no, t_c) {
    this.ad = ad;
    this.no = no;
    this.t_c = t_c;
    this.maas = maas;
    this.ders = ders;
  }

  @override
  void bilgiler() {
    // TODO: implement bilgiler
    print("Ogretmen adi : $ad");
    print("Ogretmen no : $no");
    print("Ogretmen TC no : $t_c");
    print("Ogretmen bolum : $ders");
    print("Ogretmen maas : $maas");
  }

  void maas_zam(double zam) {
    if (zam >= 50) {
      maas += zam;
    } else {
      print("Minimum 50 tl zam yapabilirsiniz.");
    }
  }
}
