main(List<String> args) {
  VeriTabani fireBase = FireBaseVeritabani();
  fireBase.userSave();
  fireBase.userUpdate();
  userGuncelle(fireBase);
}

void userGuncelle(VeriTabani db) {
  db.userUpdate();
}

abstract class VeriTabani {
  void userSave();
  void userUpdate();
  void userDelete();
}

class FireBaseVeritabani extends VeriTabani {
  @override
  void userDelete() {
    // TODO: implement userDelete
    print("Firebase den user silindi");
  }

  @override
  void userSave() {
    print("User firebase de saklandı");
  }

  @override
  void userUpdate() {
    // TODO: implement userUpdate
    print("Firebase user guncellendi");
  }
}
