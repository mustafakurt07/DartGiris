main(List<String> args) {
  Ogrenci kurt = Ogrenci();
  print(kurt.aktifMi = true);
  kurt.ogrenciAdi = "Lebron";
  kurt.ogrenciNo = 23;
  kurt.dersCalis();
  kurt.bilgileriSoyle();
  Ogrenci ahmet = Ogrenci.YeniConstructor(31, "James", true, 1996);
  ahmet.bilgileriSoyle();
  ahmet.yasHesapla();
  VeriTabaniIslemleri db = VeriTabaniIslemleri();
  print(db._kullaniciAdi);
  bool sonuc = db.Baglan();
  if (sonuc == true) {
    print("Baglandi");
  } else {
    print("1");
  }
}

class Ogrenci {
  //? kullanımı null olabilmesi için gereklidir
  int? ogrenciNo;
  String? ogrenciAdi;
  bool? aktifMi;
  int? yas;
  Ogrenci() {
    //Nesne yarattgımız anda ilk olarak bu method  tetiklenir
    print("Kurucu method calisti");
  }
  Ogrenci.YeniConstructor(var ogrenciNo, var ogrenciAdi, var aktifMi, int yas) {
    this.ogrenciNo = ogrenciNo;
    this.ogrenciAdi = ogrenciAdi;
    this.aktifMi = aktifMi;
    this.yas = yas;
  } //dart dilinde farklı constructorlar kullanımı bu şekildedir.

  void dersCalis() {
    print("Calismalisin");
  }

  bilgileriSoyle() {
    print("Ogrenci no: ${ogrenciNo} Adi: $ogrenciAdi Durum: $aktifMi");
  }

  yasHesapla() {
    print("Ogrenci Yasi:${2021 - yas!} ");
  } //unlem kullanma nedenimiz biz yası null olabilir dedik ama burada int den null cıkmaya calıstık hata aldık unlem kullanarak null degilmis gibi davranabilir dedik
}

class VeriTabaniIslemleri {
  var _kullaniciAdi = "test";
  var _sifre = "123456";
  bool Baglan() {
    if (_kullaniciAdi == "test") {
      return true;
    } else {
      return false;
    }
  }
}
