main(List<String> args) {
  String isim = "Ahmet Furkan DEMIR";

  Function isim_oku = () {
    // fonksiyon içersinde bir üst değişkene erişip
    // değişiklik yaptık
    isim = "Demir";
    print(isim);
  };

  isim_oku();

  print(isim);

  Function konus = () {
    String selam = "merhaba";

    Function soyle = () {
      selam = "selamunaleyküm";
      print(selam);
      ;
    };

    return soyle;
  };

  var kullan = konus();

  kullan();
}
