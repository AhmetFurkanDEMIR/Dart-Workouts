import 'dart:developer';

import 'Class.dart';
import 'dart:io';

List<Calisan> calisan = List();
int index = 0;

main(List<String> args) {
  var secenek;

  while (true) {
    print("\x1B[2J\x1B[0;0H");

    print(" --- DEMIR Sirket ---");

    print("\n\n   1-) Eleman ekle");
    print("\n   2-) Eleman ara");
    print("\n   3-) Zam yap");
    print("\n   4-) Eleman sil");
    print("\n   5-) Çıkış");
    stdout.write("\n\n     Seçim = ");
    secenek = stdin.readLineSync();

    try {
      secenek = int.parse(secenek);
    } catch (e) {
      continue;
    }

    if (secenek == 1) {
      ekle();
    } else if (secenek == 2) {
      ara();
    } else if (secenek == 3) {
      zam_yap();
    } else if (secenek == 4) {
      sil();
    } else if (secenek == 5) {
      print("\x1B[2J\x1B[0;0H");
      break;
    }
  }
}

void ekle() {
  print("\x1B[2J\x1B[0;0H");

  print(" --- DEMIR Sirket ---");

  stdout.write("\n\n   Ad,Soyad = ");
  String ad = stdin.readLineSync();

  stdout.write("\n\n   T.C no = ");
  String tc = stdin.readLineSync();

  stdout.write("\n\n   No = ");
  String no = stdin.readLineSync();

  stdout.write("\n\n   Maas = ");
  var maas = stdin.readLineSync();

  stdout.write("\n\n   Aile ferdi sayisi = ");
  var ferd = stdin.readLineSync();

  calisan.add(Calisan(ad, tc, no, double.parse(maas), int.parse(ferd)));

  print("\x1B[2J\x1B[0;0H");

  print(" --- DEMIR Sirket ---");

  print("\n\n   Çalışan eklenmiştir, ana menüye dönmek için Enter'e basınız ");

  String temp = stdin.readLineSync();
}

void ara() {
  print("\x1B[2J\x1B[0;0H");

  print(" --- DEMIR Sirket ---");

  stdout.write("\n\n   Aranacak çalışan No = ");

  String no = stdin.readLineSync();

  print("\x1B[2J\x1B[0;0H");

  print(" --- DEMIR Sirket ---");

  bool kontrol = false;

  for (int i = 0; i < calisan.length; i++) {
    if (calisan[i].no == no) {
      kontrol = true;

      print(calisan[i].sergile());
      break;
    }
  }

  if (kontrol == true) {
    print("\n\n   Ana menüye dönmek için Enter'e basınız ");

    String temp = stdin.readLineSync();
  } else {
    print("\n\n   Çalışan bulunamadı, ana menüye dönmek için Enter'e basınız ");

    String temp = stdin.readLineSync();
  }
}

void zam_yap() {
  print("\x1B[2J\x1B[0;0H");

  print(" --- DEMIR Sirket ---");

  stdout.write("\n\n   Zam yapılacak çalışan No = ");

  String no = stdin.readLineSync();

  bool kontrol = false;
  int i;
  for (i = 0; i < calisan.length; i++) {
    if (calisan[i].no == no) {
      kontrol = true;

      break;
    }
  }

  if (kontrol == true) {
    print("\x1B[2J\x1B[0;0H");

    print(" --- DEMIR Sirket ---");

    stdout.write("\n\n   Kaç Türk Lirası zam yapmak istiyorsunuz = ");

    String miktar = stdin.readLineSync();

    double miktar0 = double.parse(miktar);

    calisan[i].zam_yap(miktar0);

    print("\n\n   Ana menüye dönmek için Enter'e basınız ");

    String temp = stdin.readLineSync();
  } else {
    print("\x1B[2J\x1B[0;0H");

    print(" --- DEMIR Sirket ---");

    print("\n\n   Çalışan bulunamadı, ana menüye dönmek için Enter'e basınız ");

    String temp = stdin.readLineSync();
  }
}

void sil() {
  String temp;

  print("\x1B[2J\x1B[0;0H");

  print(" --- DEMIR Sirket ---");

  stdout.write("\n\n   İşten çıkartılacak çalışan No = ");

  String no = stdin.readLineSync();

  bool kontrol = false;
  int i;
  for (i = 0; i < calisan.length; i++) {
    if (calisan[i].no == no) {
      kontrol = true;

      break;
    }
  }

  if (kontrol == true) {
    print("\x1B[2J\x1B[0;0H");

    print(" --- DEMIR Sirket ---");

    stdout.write("\n\n   Çalısan isten cikartilsinmi ? (E/e - H/h) = ");

    temp = stdin.readLineSync();

    if (temp == "H" || temp == "h") {
      print("\x1B[2J\x1B[0;0H");

      print(" --- DEMIR Sirket ---");

      print(
          "\n\n   Çalışan çıkartılmadı, ana menüye dönmek için Enter'e basınız ");

      temp = stdin.readLineSync();
    } else if (temp == "E" || temp == "e") {
      calisan.removeAt(i);

      print("\x1B[2J\x1B[0;0H");

      print(" --- DEMIR Sirket ---");

      print(
          "\n\n   Çalışan başarıyla silindi, ana menüye dönmek için Enter'e basınız ");

      temp = stdin.readLineSync();
    } else {
      print("\x1B[2J\x1B[0;0H");

      print(" --- DEMIR Sirket ---");

      print("\n\n   Hatalı seçenek, ana menüye dönmek için Enter'e basınız ");

      temp = stdin.readLineSync();
    }
  } else {
    print("\x1B[2J\x1B[0;0H");

    print(" --- DEMIR Sirket ---");

    print("\n\n   Çalışan bulunamadı, ana menüye dönmek için Enter'e basınız ");

    temp = stdin.readLineSync();
  }
}
