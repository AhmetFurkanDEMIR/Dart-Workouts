import 'Ogrenci.dart';
// sınıfımız başka bir dart script dosyasında

main(List<String> args) {
  var mehmet = Ogrenci();

  mehmet.adi = "mehmed";
  // private degisken
  mehmet.erkekmi = true;
  mehmet.ogrno_ata = 19;
  print(mehmet.ogrno_return);
}
