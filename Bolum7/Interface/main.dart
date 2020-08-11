main(List<String> args) {
  var tv = TV();

  // dart dilinde direk Interface kavramı yoktur, dolaylı olarak erişiriz.

  NesneleriCalistir(tv);

  var ses_sistemi = SesSistemi();

  NesneleriCalistir(ses_sistemi);

  List<Kumanda> ss = List();

  ss.add(tv);
  ss.add(ses_sistemi);

  for (Kumanda m in ss) {
    NesneleriCalistir(m);
  }
}

void NesneleriCalistir(Kumanda k) {
  k.ses_ac();

  k.ses_azalt();
}

class Kumanda {
  void ses_ac() {
    print("Kumanda sınıfı ses ac methodu");
  }

  void ses_azalt() {
    print("Kumanda sınıfı ses azalm methodu");
  }
}

class BirDigerSinif {
  void Herhangibir() {
    print("herhangi bir method tetiklendi");
  }
}

// ortak özellikleri olan ama aralarında kalıtımsal olarak
// bir ilişki olmayan yapıları bir arada tutar.
// dart dili çok sınıflı kalıtıma izin vermez
class TV implements Kumanda, BirDigerSinif {
  @override
  void ses_ac() {
    print("Kumanda sınıfı ses ac methodu");
  }

  @override
  void ses_azalt() {
    print("Kumanda sınıfı ses azalm methodu");
  }

  @override
  void Herhangibir() {
    print("herhangi bir method tetiklendi");
  }
}

class SesSistemi implements Kumanda {
  @override
  void ses_ac() {
    print("Kumanda sınıfı ses ac methodu");
  }

  @override
  void ses_azalt() {
    print("Kumanda sınıfı ses azalm methodu");
  }
}
