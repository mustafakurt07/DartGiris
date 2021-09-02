Future<String> siparisHazirla() {
  return Future.delayed(Duration(seconds: 4), () => ("siparis Alindi"));
  //burada hem isimli parametre gonderme hem de anonim fonskyion kullandık  seconds:4 isimli parametre gonderme, ()=> anonim fonksiyon kullanımıdır.
}

Future<void> siparisVer() async {
  var siparisDurumu = await siparisHazirla();
  print("Siparis Durumu: $siparisDurumu");
}

elemaniYazdir(eleman) {
  print(eleman);
}

bool kontrol(int sayi) {
  return sayi < 4;
}

donusturucu(int g) //liste elemanı int oldugu için int parametre
{
  return g + 1;
}

void main() {
  //siparisVer();//instance of _future verme nedeni siparisHazırla fonksiyonu 4 sn işlem yaptıgı için hemen degeri donemiyor Future ile doneceginin sözünü veriyor 4 sn sonra işlem gerceklesiyoor
  //siparisHazirla();
  //Future Nedir?
  //Asenkron fonk cagırdıgında tamamlanmamıs future senkron tamamlanmıs future verir

  //üst düzey fonskiyonlar baska bir fonksiyonu parametre olarak alabilen fonksiyonlardır
  //elemaniYazdir("naber");
  List meyveler = ["elma", "armut", "kiraz"];
  meyveler.forEach(
      elemaniYazdir); //foreach meyveler listesindeki elemanrı direk elemanıyazır fonksiyonuna parametre olarak gönderdi
  //FİLTRELEME
  List<int> sayilar = [1, 2, 3, 4, 5, 6, 7];
  var sonuc = sayilar.where(kontrol); //(int b)=>b<6);
  print(sonuc);
  //itarable tekrarlanabilir demektir
  //mapping
  var donusturulmus = sayilar.map(
      donusturucu); //bir listeden yeni bir liste olustururken kullanırız.Whereden farkı her bir elemanın üzerinde değişiklik yapar.
  print(donusturulmus);
}
