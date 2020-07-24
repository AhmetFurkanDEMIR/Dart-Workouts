main(List<String> args) {
  // int liste tanımlama
  List<int> numaralar = List(5);

  // listeye değer atama
  numaralar = [8, 9, 6, 3, 9];

  // 0. index
  print(numaralar[0]);

  // string liste
  List<String> isimler = List(2);

  // indexlere deger atama
  isimler[0] = "Ahmet";
  isimler[1] = "Furkan";

  // var liste
  var soyadlar = List(2);

  soyadlar = ["Demir", "Demir"];

  print(isimler);

  print(soyadlar);

  // hata verir. oluşturulan boyutu aşacak bir indexi yazdırmaya çalışıyoruz.
  // print(soyadlar[8]);

  // uzunluk on olacak şekilde her bir elemanı dokuz olan bir liste oluşturur.
  List<int> eleman = List.filled(10, 9);
  print(eleman);

  // 8. index degisti.
  eleman[8] = 199;

  print("isimler" + isimler[0]);

  // listeleri gezmek

  int i = 0;

  // 1. yöntem
  // listenin türüne göre okunaneleman değiskenin tipi degistirlirir.
  for (int okunaneleman in eleman) {
    print("$i . eleman = " + okunaneleman.toString());

    i += 1;
  }

  print("*" * 50);

  // 2. yöntem

  List<double> elemanlar1 = List.filled(5, 9.5);

  for (int i = 0; i < elemanlar1.length; i++) {
    print("$i . eleman = ${elemanlar1[i]}");
  }

  print("*" * 50);

  // 3. yöntem lambda
  elemanlar1.forEach((element) => print(element));
}
