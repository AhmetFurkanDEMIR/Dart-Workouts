main(List<String> args) {
  double vize = 10;
  double finall = 100;

  double vize_oran = 0.4;
  double finall_oran = 0.6;

  double temp = vize * vize_oran + finall * finall_oran;

  if (temp <= 100 && temp >= 90) {
    print("Notunuz = $temp, Harf aralığı = AA");
  } else if (temp < 90 && temp >= 85) {
    print("Notunuz = $temp, Harf aralığı = BA");
  } else if (temp < 85 && temp >= 80) {
    print("Notunuz = $temp, Harf aralığı = BB");
  } else if (temp < 80 && temp >= 75) {
    print("Notunuz = $temp, Harf aralığı = CB");
  } else if (temp < 75 && temp >= 70) {
    print("Notunuz = $temp, Harf aralığı = CC");
  } else if (temp < 70 && temp >= 65) {
    print("Notunuz = $temp, Harf aralığı = DC");
  } else if (temp < 65 && temp >= 60) {
    print("Notunuz = $temp, Harf aralığı = DD");
  } else if (temp < 60 && temp >= 50) {
    print("Notunuz = $temp, Harf aralığı = FD");
  } else {
    print("Notunuz = $temp, Harf aralığı = FF");
  }
}
