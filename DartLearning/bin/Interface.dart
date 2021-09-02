/**
 Interface sayesinde ortak özelliği olan ancak kalıtımsal olarak alakalı olmayan sınıfları
 bir çatı altında toplayabiliriz.
 Interface olarak kullanılan sınıfların metotları bu sınıfı implemete eden sınıflar
 tarafından yapılmak zorundadır.
 Interface sayesinde dart dilinde olmayan coklu kalıtım saglanabilir.
 */
main(List<String> args) {
  Kus kus = Kus();
  kus.fly();
}

abstract class Havlayabilen {
  void bark();
}

abstract class Kosabilen {
  void run();
}

abstract class Ucabilen {
  void fly();
}

class Kopek implements Havlayabilen, Kosabilen {
  @override
  void bark() {
    print("Hav hav");
  }

  @override
  void run() {
    print("Kosarım");
  }
}

class Kus implements Ucabilen {
  @override
  void fly() {
    print("Ucuyorum");
  }
}
