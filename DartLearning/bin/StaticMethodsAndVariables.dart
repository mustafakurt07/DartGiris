/**
 Static methodlar sayesinde nesne uretmeden özellikleri kullanabiliriz
 */
main(List<String> args) {
  /* Matematik m1 = Matematik(20, 30);
  m1.topla();
  Matematik.PI; */
  //Static sayesinde nesne üretmeden PI degerine erişebildik.Bellekten gereksiz yer kullanımını engelledik.
  Matematik.sinifAdiniSoyle();
  Matematik.sinifAdiniSoyle();
  print("Toplam islem sayisi: ${Matematik.toplamIsSayisi}");
}

class Matematik {
  //instance variable
  int sayi_1 = 0;
  int sayi_2 = 0;
  static int toplamIsSayisi = 0; //sınıfa baglı degisken
  //static tanımladıgımız PI artık class degiskeni oldu
  static double PI = 3.14;
  Matematik(this.sayi_1, this.sayi_2);

  topla() {
    // sinifAdiniSoyle();//sıtatic olmayan içinde static kullanabiliriz.
    print("TOPLAM: ${sayi_1 + sayi_2}");
    toplamIsSayisi++;
  }

  static sinifAdiniSoyle() {
    //topla(); static içerisinde static olmayan kullanılamaz
    print("Matematik class");
    toplamIsSayisi++;
  }

  /* final String name = "naber";
  name="kurt";
  const String ad="bamsı";
  ad="beyrek"; 
  const ve final tanımlandıgı zaman degistirelemez sabittirler*/

}
