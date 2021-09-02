main(List<String> args) {
  CemberDaire cemberDaire = CemberDaire(3);
  cemberDaire.AlanHesapla();
}

class CemberDaire {
  int _yariCap = 1;
  double _pi = 3.14;
  CemberDaire(int yari_cap) {
    _yariCapKontrol =
        yari_cap; //kullanıcının girdiği deger yarıcap kontrol methoduna verilerek gerekli kontrolu yapmasını saglar
  }
  void set _yariCapKontrol(int deger) {
    if (deger > 0) {
      _yariCap = deger;
    } else {
      _yariCap;
    }
  }

  double CevreHesapla() {
    return 2 * _pi * _yariCap;
  }

  double AlanHesapla() {
    return _pi * _yariCap * _yariCap;
  }
}
