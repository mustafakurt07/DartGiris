/* Alt sınıftan bir nesne üretirsek  öncelikle kalıtım yaptıgı 
üst sınıfın constructor methodu calısır daha sonra kendi methodu calısır

 */

main(List<String> args) {
  //Sivil hasan = Sivil();
  Er kurt = Er("Kurt", 25);
  kurt.selamla();
}

class Asker {
  String ad = "";
  int yas = 18;
  Asker(this.ad, this.yas) {
    print("Asker constructor calıstı");
  }
  selamla() {
    print("Benim adım $ad yasım $yas");
  }
}
/* 
ust sınıftan kalıttıgımız için nesne uretince onun constructoru ilk çalıscagından parametre bekkliyor 
ama kendi sınıfımızda parametre almıyor super 
ile aldıgımız parametreyi ust sınıf constructoru gonderiyoruz */

class Er extends Asker {
  Er(String ad, int yas) : super(ad, yas) {
    print("Er constructor calısti");
  }
  /* @override
  selamla() {
    // TODO: implement selamla
    print("naber");
  } */
  @override
  selamla() {
    return super.selamla();
  }
}

/* class Sivil extends Er {
  Sivil() {
    print("Sivil consturctor calıstı");
  }
} */
