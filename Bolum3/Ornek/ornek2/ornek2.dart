import 'dart:isolate';

void main(List<String> args) {
  double ilk_sayi = 80;
  String islem = "*";
  double ikinci_sayi = 90;

  double sonuc = sart(islem, ilk_sayi, ikinci_sayi);

  print(sonuc);
}

double sart(String islem, double ilk_sayi, double ikinci_sayi) {
  if (islem == "+") {
    return toplama(ilk_sayi, ikinci_sayi);
  } else if (islem == "-") {
    return cikarma(ilk_sayi, ikinci_sayi);
  } else if (islem == "*") {
    return carpma(ilk_sayi, ikinci_sayi);
  } else if (islem == "/") {
    return bolme(ilk_sayi, ikinci_sayi);
  } else {
    print("Hatalı islem !!");
  }
}

double toplama(ilk_sayi, ikinci_sayi) => (ilk_sayi + ikinci_sayi);

double cikarma(ilk_sayi, ikinci_sayi) => (ilk_sayi - ikinci_sayi);

double carpma(ilk_sayi, ikinci_sayi) => (ilk_sayi * ikinci_sayi);

double bolme(ilk_sayi, ikinci_sayi) => (ilk_sayi / ikinci_sayi);
