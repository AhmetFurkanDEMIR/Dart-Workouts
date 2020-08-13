import 'dart:io';
import 'dart:async';

main(List<String> args) {
  print("program basladı");

  // senkron yapı, sırayla çalışır
  dosya_oku();

  dosya_oku2();

  print("program bitti");
}

// 1. yöntem
// dosyayı çeker ve okur
// bu sırada kod akışına devam eder
dosya_oku() async {
  print("Dosya içeriği gösterilecek...");

  String icerik = await dosyaIndir();

  print("Dosya icerigi : $icerik");
}

// 2. yöntem
// dosyayı çeker ve okur
// bu sırada kod akışına devam eder
dosya_oku2() {
  Future<String> veri = dosyaIndir();

  veri.then((value) => print(value));
}

Future<String> dosyaIndir() {
  print("Dosya indirme islemi basladi");

  // dat dilinde duraklatma amaçlı kullanılır
  //sleep(Duration(seconds: 5));

  // asekron yapı, sırayla yapılmaz, bu işlem devam ederken kod ilerler
  Future<String> sonuc = Future.delayed(Duration(seconds: 10), () {
    return "indirilen dosya içeriği";
  });

  print("Dosya indirme islemi bitti");

  return sonuc;
}
