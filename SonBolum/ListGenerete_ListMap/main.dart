// random sayı üretmek için kullanılan kütüphane
import 'dart:math';

main(List<String> args) {
  // bizden lamda fonksiyon bekliyor
  // listenin elemanlarını index*2 olarak atadım
  List<int> ogrenci_no = List.generate(30, (index) => index * 2);

  // listenin elemanlarına rastgele sayı atarız
  List<int> sayi = List.generate(30, (index) => rastgele());

  /* aynı işleme sahip
  List<int> sayti = List.generate(30, (index) {

    return 0;
  }); */

  ogrenci_no.forEach((element) => print(element));

  print("\n\n ---- \n\n");

  sayi.forEach((element) => print(element));

  // ogrenci tutan liste
  // map yapısı
  List<Ogrenci> tum_ogreciler = ogrenci_no.map((sayi) {
    return Ogrenci("agfd", sayi);
  }).toList();

  /*
  List<Ogrenci> tum_ogreciler = ogrenci_no.map((sayi) => Ogrenci("agfd", sayi);
  ).toList();
  */

  tum_ogreciler.forEach((element) => print(element.no));

  // tostring methodu
  tum_ogreciler.forEach((element) => print(element));
}

int rastgele() {
  // sıfırdan elliye kadar rastgele sayı oluşturur

  int olustur;

  while (true) {
    olustur = Random().nextInt(3);

    if (olustur == 0) {
      int olustur = Random().nextInt(3);
    } else {
      break;
    }
  }
  return olustur;
}

class Ogrenci {
  String ad;
  int no;

  Ogrenci(this.ad, this.no);

  // override ettiğimiz tostring fonksiyonu
  @override
  String toString() {
    // TODO: implement toString
    return "OGR No : $no";
  }
}
