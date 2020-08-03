main(List<String> args) {
  var kopek0 = Kopek("kangal", "mavi");
  Kopek kopek1 = Kopek("kangal", "beyaz");
  Kopek kopek2 = new Kopek("pitbul", "yesil");

  Hayvan hayvan = Hayvan.isimliKurucu("mavi", "sırtlan");
}

class Hayvan {
  String renk;

  // defaolt constructor
  Hayvan(String renk) {
    print(renk.toString());
  }

  Hayvan.isimliKurucu(String renk, String cins) {
    print(cins.toString() + renk.toString());
  }
}

// alt dınıf üst sınıfın constructor ını kullanır
class Kopek extends Hayvan {
  Kopek(String cins, String renk) : super(renk) {
    print(cins.toString() + renk.toString());
  }

  /*
  // dart dilinde ana sınıfın kurucu constructor ını tanımladıysanız
  // bu kod parçası hata verir, çalışması inin constructor ın boş olması gerekli
  Kopek.isimliKurucu(String cins, String renk){
    print(cins.toString() + renk.toString());
  }
  */
}
