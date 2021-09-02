main(List<String> args) {
  Musteri ahmet = Musteri(20);
  ahmet.bilgiYazdir();
}

class Musteri {
  int? _yas;
  Musteri(int yas) {
    yasAta(_yas=yas);
  }
  void  yasAta(int yas) {
    if (yas < 17) {
      _yas = 18;// _ private yapmamızı saglar
    } else
      return;
  }

  bilgiYazdir() {
    print("Yas $_yas");
  }
}
