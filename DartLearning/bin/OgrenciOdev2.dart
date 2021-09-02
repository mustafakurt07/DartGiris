class Student {
  int? id;
  String? name;
  int? not;
  Student({this.id, this.not,this.name});
  @override
  String toString() {
    // TODO: implement toString
    return "Id : $id Not :$not name:$name";
  } //bizim nesnemizi nasıl yazdıracagını sisteme belirtmiş oluyoruz

}
