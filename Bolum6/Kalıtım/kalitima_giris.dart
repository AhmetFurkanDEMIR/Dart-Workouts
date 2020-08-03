main(List<String> args) {
  Kedi kedi = Kedi();

  kedi.isim = "maviş";
  kedi.renk = "mavi";
  kedi.yas = 5;
  kedi.miyavla();
  kedi.yemek_ye();

  var kopek = Kopek();
  kopek.isim = "çomar";
  kopek.renk = "beyaz";
  kopek.havla();
  kopek.yemek_ye();
  kopek.vetirinere_gotur();

  print("${kopek.isim} 'in rengi ${kopek.renk}");

  // ana sınıfta varsayılan değeri kullanabilir
  print("${kopek.isim} 'in yası = ${kopek.yas}");
}

// hayvan sınıfımız
// gizli bir objeden türetilir.
class Hayvan extends Object {
  String isim;
  String renk;
  int yas = 0;

  void yemek_ye() {
    print("$isim yemek yiyiyor...");
  }

  void vetirinere_gotur() {
    print("Hayvan vetirinere götürüldü...");
  }
}

// hayvan sınıfımızı miras alan yeni sınıf
class Kedi extends Hayvan {
  void miyavla() {
    print("$isim miyavlıyor...");
  }

  // bu sınıfa özgü yeni fonksiyonumuz
  // miras aldığımız sınıfın fonksiyonu yerine yeni fonksiyonumuz kullanılır.
  @override
  void vetirinere_gotur() {
    print("Kedi veterinere götürüldü...");

    // üst sınıfa çıkar ve ordaki methodu da çağırır.
    //super.vetirinere_gotur();
  }
}

class Kopek extends Hayvan {
  void havla() {
    print("$isim havlıyor...");
  }

  // override ile aldığı ve geri döndürdüğü değerler aynı olur
  // lakin içerik farklı
  @override
  void vetirinere_gotur() {
    print("köpek veterinere götürüldü...");
  }
}
