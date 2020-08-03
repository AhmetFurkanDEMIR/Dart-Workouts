main(List<String> args) {
  Er ahmet = Er();
  Er hasan = new Er();

  Asker asker = Asker();

  Yuzbasi ali = Yuzbasi();

  hazir_ol(asker);
  hazir_ol(ahmet); // upcasting (yukarı çevrim)
  hazir_ol(ali); // upcasting

  // her yuzbasi bir askerdir.
  // askerden yüzbasi yaratabiliriz.
  Asker yeni = Yuzbasi();

  hazir_ol(yeni);
}

// bir veri tipi farklı türdeki veri tipine bürünüyor.
void hazir_ol(Asker asker0) {
  // polımorfizm
  asker0.selam_ver();
}

class Asker {
  void selam_ver() {
    print("asker selam verdi.");
  }
}

class Er extends Asker {
  @override
  void selam_ver() {
    print("Er selam verdi.");
  }
}

class Yuzbasi extends Asker {
  @override
  void selam_ver() {
    print("Yüzbasi selam verdi.");
  }
}
