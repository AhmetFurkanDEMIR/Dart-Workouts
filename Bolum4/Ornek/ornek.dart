import 'dart:io';

void main() {
  print("\x1B[2J\x1B[0;0H");

  print("\n --- Matematik Dersi Öğrenci Otomasyonu ---");

  stdout.write("\n\n  Kaç adet öğrenci girilecek = ");

  var sayi = stdin.readLineSync();

  print("\x1B[2J\x1B[0;0H");

  print("\n --- Matematik Dersi Öğrenci Otomasyonu ---");

  List<String> ad_soyad = List(int.parse(sayi));

  List<String> tc_no = List(int.parse(sayi));

  List<double> finall = List(int.parse(sayi));

  List<double> vize = List(int.parse(sayi));

  List<double> finall_oran = List(int.parse(sayi));

  List<double> vize_oran = List(int.parse(sayi));

  List<int> gecme_notu = List(int.parse(sayi));

  stdout.write("\n\n" + "*" * 50);

  for (int i = 0; i < int.parse(sayi); i++) {
    stdout.write("\n\n  Öğrenci adı, soyadı = ");

    ad_soyad[i] = stdin.readLineSync();

    stdout.write("\n  T.C numarası = ");

    tc_no[i] = stdin.readLineSync();

    stdout.write("\n  Final notu = ");

    finall[i] = double.parse(stdin.readLineSync());

    stdout.write("\n  Final oranı = ");

    finall_oran[i] = double.parse(stdin.readLineSync());

    stdout.write("\n  Vize notu = ");

    vize[i] = double.parse(stdin.readLineSync());

    stdout.write("\n  Vize oranı = ");

    vize_oran[i] = double.parse(stdin.readLineSync());

    stdout.write("\n  Ders geçme notu = ");

    gecme_notu[i] = int.parse(stdin.readLineSync());

    stdout.write("\n" + "*" * 50);
  }

  Map<String, List> OBS = Map();

  OBS["ad_soyad"] = ad_soyad;
  OBS["tc_no"] = tc_no;
  OBS["finall"] = finall;
  OBS["finall_oran"] = finall_oran;
  OBS["vize"] = vize;
  OBS["vize_oran"] = vize_oran;
  OBS["gecme_notu"] = gecme_notu;

  List<double> sonuc = hesapla(OBS, int.parse(sayi));

  OBS["not"] = sonuc;

  List<bool> gecme = gecme_bool(OBS, int.parse(sayi));

  OBS["gecme"] = gecme;

  print("\x1B[2J\x1B[0;0H");

  print("\n --- Matematik Dersi Öğrenci Otomasyonu ---");

  stdout.write("\n" + "*" * 50 + "\n\n");

  for (int i = 0; i < int.parse(sayi); i++) {
    print("  Ad,Soyad              = ${OBS["ad_soyad"][i]}");

    print("  T.C no                = ${OBS["tc_no"][i]}");

    print("  Final notu            = ${OBS["finall"][i]}");

    print("  Final oranı           = ${OBS["finall_oran"][i]}");

    print("  Vize notu             = ${OBS["vize"][i]}");

    print("  Vize oranı            = ${OBS["vize_oran"][i]}");

    print("  Dersi geçme notu      = ${OBS["gecme_notu"][i]}");

    print("  Öğrencinin ders notu  = ${OBS["not"][i]}");

    print("  Öğrenci dersi geçtimi = ${OBS["gecme"][i]}");

    stdout.write("\n" + "*" * 50 + "\n\n");
  }
}

List hesapla(Map OBS, int sayi) {
  List<double> sonuc = List(sayi);

  double temp;

  for (int i = 0; i < sayi; i++) {
    temp = OBS["vize"][i] * OBS["vize_oran"][i];

    temp += OBS["finall"][i] * OBS["finall_oran"][i];

    sonuc[i] = temp;
  }

  return sonuc;
}

List gecme_bool(Map OBS, int sayi) {
  List<bool> gecme = List(sayi);

  for (int i = 0; i < sayi; i++) {
    if (OBS["not"][i] < OBS["gecme_notu"][i]) {
      gecme[i] = false;
    } else {
      gecme[i] = true;
    }
  }

  return gecme;
}
