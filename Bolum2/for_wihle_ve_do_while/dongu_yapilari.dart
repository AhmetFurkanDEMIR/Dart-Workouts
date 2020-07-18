main(List<String> args) {
  // for döngüsü

  // ilk parametre, degisken
  // ikinci parametre, durdurma şartı, şart uymazsa sonsuza kadar devam eder.
  // üçüncü parametre, degiskenin nasıl artacağıdır.
  for (int karar = 0; karar <= 100; karar++) {
    print(karar);
    // bu bloga yazacağınız her sey 100 defa tekrar eder.
  }

  // while

  int dng = 0;
  // aldığı parametre true oldugu sürece döner
  // false olursa dönmeyi birakir.
  while (dng < 10) {
    // dng 10 dan büyük olunca boolen deger false olur ve döngü biter
    // döngü boyunca burdaki tüm işlemleri geröekleştirir.
    print(dng);
    dng += 1;
    // degisken otomatik artmaz, sizin ayarlayacagınız şekilde artar.
  }

  // do wile

  // wihile ile aynı kullanıma sahip.
  // tek farkı içerdeki deger false ile baslasa bil döngüyü mutlaka bir kere başlatır.
  do {
    print("basladı, mutlaka baslar.");
  } while (dng > 100);
}
