import 'dart:math';
import 'CemberDaire.dart';
import 'OgrenciOdev2.dart';

void main() {
  /* print("naber");
  Top nike = Top("mor", 3);
  print(nike.renk);
  nike.selamlama();
  CemberDaire cembers = CemberDaire(4);
  var alan = cembers.AlanHesapla();
  print(alan); */
  List<Student> students = List.filled(3, Student());
  fillStudent(students);
  //print(students[2].id);
  //print(students[2].not);
  studentPrint(students);
  /* for (Student s in students) {
    print(s);
  } */
  print("Tum ogrenci ortalaması:" + NotOrtHesapla(students).toString());
}

void studentPrint(List<Student> students) {
  for (Student s in students) {
    print(s);
  }
}

void fillStudent(List<Student> studentList) {
  for (var i = 0; i < studentList.length; i++) {
    studentList[i] =
        Student(id: Random().nextInt(200), not: Random().nextInt(100),name: "kurt");
  }
}

double NotOrtHesapla(List<Student> list) {
  int toplam = 0;
  for (Student s in list) {
    toplam += s.not!;
  }
  return toplam / list.length;
}

//class üreteceğimiz nesnenin  iskeletidir.
class Top {
  String renk = "";
  var yariCap;
  Top(String renki, var yariCapi) {
    // constructor method nesne üretildiği an cagrılır
    this.renk = renki;
    this.yariCap = yariCapi;
    //this kullanma amacımız  programa hangisinin örneğin niteligi oldugu belirtmektir.
  }
  //sınıfa ait method
  selamlama() {
    print("merhaba ben topum");
  }
}
