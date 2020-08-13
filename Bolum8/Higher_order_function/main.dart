// oluşturduğumuz fonksiyon parametre olarak bir fonksiyon alıyorsa
// ya da geriye bir fonksiyon döndürüyorsa bu fonksiyonlara Higher order function denir

main(List<String> args) {
  var f1 = (int sayi1, int sayi2) => print(sayi1 * sayi2);

  method("Ahmet Furkan DEMIR", f1);

  // geriye dönen fonksiyonu değiskene atadık
  var fonk = method2();

  print(fonk(20, 30));
}

// parametre olarak fonksiyon alan fonksiyon
void method(String isim, Function fonk) {
  print("Benim ismim $isim");
  fonk(20, 30);
}

// Geriye fonksiyon döndüren fonksiyon
Function method2() {
  Function sayi_kare = (int s1, int s2) => s1 * s2;

  return sayi_kare;
}
