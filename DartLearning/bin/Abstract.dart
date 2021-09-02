/* Sınıflar arası ortak fonksiyonlar varsa 
ve biz nesne üretmek istemiyorsak abstract yapmalıyz */
main(List<String> args) {
  Kare kare = Kare(3);
  print(kare.alanHesapla());
  print(kare.cevreHesapla());
  Dikdortgen dikdortgen = Dikdortgen(4, 8);
  print(dikdortgen.alanHesapla());
  print(dikdortgen.cevreHesapla());
  List<Sekil> tumSekiller =[]; //ortak abstract sınıftan liste olusturarak istediğimiz tum sekilleri bu listede tutabiliriz
  tumSekiller.add(kare);
  tumSekiller.add(dikdortgen);
  test(kare);
  test(dikdortgen);//iki farklı türden yapıyı işleme sokabiliyoruz abstract sayesinde
}

void test(Sekil sekil) {
  sekil.selamla();
}

abstract class Sekil {
  alanHesapla();
  cevreHesapla();

  void selamla() {
    print("Ben sekilim");
  }
}

class Kare extends Sekil {
  int kenar;
  Kare(this.kenar);
  @override
  alanHesapla() {
    return kenar * kenar;
  }

  @override
  cevreHesapla() {
    return kenar * 4;
  }

  @override
  void selamla() {
    // TODO: implement selamla
    print("Ben kareyim");
  }
}

class Dikdortgen extends Sekil {
  int en;
  int boy;
  Dikdortgen(this.en, this.boy);
  @override
  alanHesapla() {
    return en * boy;
  }

  @override
  cevreHesapla() {
    return 2 * (en + boy);
  }

  @override
  void selamla() {
    // TODO: implement selamla
    print("Ben dikdortgenim");
  }
}
