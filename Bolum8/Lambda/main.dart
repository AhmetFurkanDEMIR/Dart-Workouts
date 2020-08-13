main(List<String> args) {
  // tipi fonksiyon olan değişken
  // lamda fonksiyon
  var f1 = (int s1, int s2) {
    int toplam = s1 + s2;

    print(toplam);
  };

  // tipi fonksiyon olan nesne
  Function f2 = (int s1) {
    return s1 * 2;
  };

  f1(20, 30);

  print(f2(20));

  print(f3(70, 60));

  var f4 = (int s1, int s2) => print(s1 * s2);

  f4(80, 80);
}

var f3 = (int sayi1, int sayi2) {
  return (sayi1 * sayi2) + 90;
};
