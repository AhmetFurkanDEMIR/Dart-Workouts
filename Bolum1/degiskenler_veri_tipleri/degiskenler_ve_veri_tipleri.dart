import 'dart:ffi';

main(List<String> args) {
  // bu programlama dilinde tip biçimlemesi mevcuttur.

  // int
  int yas = 32; // tam sayı
  print(yas);

  yas = 38;

  print(yas);

  int hexadesimalsayi = 0xAABBCC; // int degiskeni hexadesimal sayi tutabilir

  print(hexadesimalsayi);
  //

  // double
  double boy = 189.5;

  print(boy);

  boy = 190.1;

  print(boy);

  double exponentsayi = -0.89e5;

  print(exponentsayi);

  //

  // num

  num sicaklik = 32.5;
  print(sicaklik);

  sicaklik = 30.1;

  print(sicaklik);
  //

  int sayi1;

  print(sayi1); // varsayılan değer null

  // var

  var sayi11 =
      80; // kod çalışırken değişkene atanan türe göre kendi türünü ayarlar ve degistirilemez
  var sayi21 = 20.5;
  var str1 = "demir";

  print(sayi11 + sayi21);

  print(str1);
  //

  // bool

  bool yetiskinmi = true;

  print(yetiskinmi);

  yetiskinmi = false;

  print(yetiskinmi);
}
