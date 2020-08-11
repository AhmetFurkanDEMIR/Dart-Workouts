main(List<String> args) {
  // sınıflardaki ogr sayisi bellekte her ogrenci için ayrı yer tutulur
  // statik tanımlarsak nesneye bağlı değil sınıfa bağlı olur.
  var ogr1 = Ogrenci();
  ogr1.ad = "ahmed";
  // ogr1.ogr_sayi += 1;

  Ogrenci.ogr_sayi += 1;

  print("toplam ogrenci sayisi : ${Ogrenci.ogr_sayi}");

  // statik metod
  Ogrenci.ogrenci_sayisi_yazdir();

  var ogr2 = Ogrenci();
  ogr2.ad = "hasan";
  // ogr2.ogr_sayi += 1;

  Ogrenci.ogr_sayi += 1;

  print("toplam ogrenci sayisi : ${Ogrenci.ogr_sayi}");

  // statik metod
  Ogrenci.ogrenci_sayisi_yazdir();
}

class Ogrenci {
  String ad;

  // her nesne için tutulmaz bir sınıf için tutulur.
  // okul kodunun değişmemesi için const tanımlandı
  static const int okul_kodu = 14536;

  // statik veri tipi.
  // bellekte ayrı bir yerde tutulur.
  static int ogr_sayi = 0;

  static void ogrenci_sayisi_yazdir() {
    print("toplam ogrenci sayisi : $ogr_sayi");

    // statik metodun içine statik olmayan metod ve degiskenler yazamazsınız.
    //adini_soyle()
  }

  void adini_soyle() {
    // normal metodun içinden statik method ve değiskenlere erisebilinir.
    ogrenci_sayisi_yazdir();
    
    print("Benim adım : $ad");
  }
}
