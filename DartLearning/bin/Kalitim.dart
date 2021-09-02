/*Kalıtım kod tekrarından kacınarak ortak alanları bir yerde toplamamızı saglar .Boylece okunabilir test edilebilir kod yazarız. Kod tekrarından kacınırız
 */
main() {
  NormalUser normalUser = NormalUser();
  normalUser.girisYap();
  SadeceOkuyanUser okuyanUser = SadeceOkuyanUser();
  okuyanUser.davetEt();
  okuyanUser.okumaYap();
  AdminUser adminUser = AdminUser();
  User amca = NormalUser(); //upcasting yukarı cevrim islemi
  List<User> tumUserler =[]; //tum userları tek bir listede toplamak istersek bize kolaylık saglar. Kalıtım sayesinde her user classı için ayrı ayrı liste olusturmamıza gerek kalmadı
  tumUserler.add(amca);
  tumUserler.add(normalUser);
  testFonksiyonu(amca);
  testFonksiyonu(okuyanUser);
  testFonksiyonu(adminUser);
}

void testFonksiyonu(User kullanici) {
  kullanici.girisYap(); //polymorphisim örneği her classa ozel method yazıyoruz
}

class User {
  String mail = "";
  String password = "";

  girisYap() {
    print("Parent Giris yapti");
  }
}

class NormalUser extends User {
  davetEt() {
    print("Normal user davet etti");
  }

  @override
  girisYap() {
    // TODO: implement girisYap
    print("Normal user giris yaptı");
  }
}

class SadeceOkuyanUser extends NormalUser {
  okumaYap() {
    print("Ben okuyabiliyorum");
  }

  @override
  girisYap() {
    // TODO: implement girisYap
    print("Sadece okuyan giris yaptı");
  }
}

class AdminUser extends User {
  toplamUserGoster() {
    print("Toplam Kullanıcı sayisi 59");
  }

  @override
  girisYap() {
    // TODO: implement girisYap
    print("Admin user giris yaptı");
  }
}
