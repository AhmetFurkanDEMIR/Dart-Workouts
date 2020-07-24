main(List<String> args) {
  // python daki sözlük yapısına benzer.
  // id : 0808 gibi
  // id string, ikinci girdi türüde yazılır
  Map<String, Object> Kisiler = Map();

  Kisiler["Id"] = "Ahmed";
  Kisiler["Yas"] = 19;
  Kisiler["Erkekmi"] = true;

  print(Kisiler["Id"]);

  // Kisiler map koleksiyonunun key leri
  for (String key in Kisiler.keys) {
    print(key);
  }

  // degerler
  for (Object value in Kisiler.values) {
    print(value);
  }

  Object yeniyas = 35;

  // güncelleme islemi
  Kisiler.update("Yas", (value) => 21);

  // key = value şeklinde tüm elemanları gezer.
  Kisiler.forEach((key, value) => print("$key = $value"));

  Map<String, int> plaka_kodlari = {"Sivas": 58, "Kayseri": 38, "Istanbul": 34};

  print(plaka_kodlari);
  print("Sivas = ${plaka_kodlari["Sivas"]}");
}
