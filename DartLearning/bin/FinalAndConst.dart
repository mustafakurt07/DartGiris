main(List<String> args) {
  final tarih =
      DateTime.now(); //compile time belli olmayan zamanlarda kullanabilirz
  print(tarih);
  //const tarih_2 = DateTime.now();//compile time belli olmayanlarda kullanbilirz.
  final liste1 = [1, 2, 3];
  final liste2 = [1, 2, 3];
  liste1.add(
      4); //listeye ekleme yapabiliriz . final yaparak bellekteki yeri degismez.

  if (liste1 == liste2) {
    print("Esit");
  } else {
    print("degil");
  } // esit degil sonucu cıkıyor cunku bellek adreslerini karsılastırır esit degil sonucu verir
  const liste3 = [1, 2, 3, 4];
  const liste4 = [1, 2, 3, 4];
  if (liste3 == liste4) {
    print("Esit");
  } else {
    print("degil");
  } //sonuc esit cıkar 
  //finalden farkı budur const içerigini degistiremeyiz.
}
