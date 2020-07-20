main(List<String> args) {
  // hata vermesini düsündügünüz kodlar bu bloğa yazılır.
  try {
    int sonuc0 = 12 ~/ 0;
  } on IntegerDivisionByZeroException {
    // hata türüne göre işlem gerçekleşir.
    print("Bolen sıfır olamaz");
  }
  // hata olmazsa kod bu bloklara girmez.

  try {
    // bu stringi int degere dönüstüremez.
    int.parse("15aF");
  } catch (e) {
    print(
        "olusabilecek tüm hatalarda buraya girer. hata türüne bakılmaz. Hata: $e");
  } finally {
    print("Bu bloğa mutlaka ve mutlaka girilir: finally bloğu");
  }
}
