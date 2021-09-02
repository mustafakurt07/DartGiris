main() {
  const Student kurt = Student(1, "kurt");
 const Student kurt1 = Student(1, "kurt");
  if (kurt == kurt1) {
    print("esit");
  } else {
    print("degil");
  }
}

class Student {
  final int id;
  final String ad;
  const Student(this.id, this.ad);
}
