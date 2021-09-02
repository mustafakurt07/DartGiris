main() {
  List<int> liste = [1, 2, 3, 4];
  List<String> liste1 = ["Ahmet", "Mehmet", "Ayse"];
  //liste.forEach(callBack);
  myForeachLoop(liste, argument );
 /*  myForeachLoop(liste, (int deger, int index) {
    print("Deger: $deger ve index $index");
  }); */
}
void argument(dynamic deger,int index)
{
   print("Deger: $deger ve index $index");

}

void myForeachLoop(List<dynamic> list,Function function) {
  for (int i = 0; i < list.length; i++) {
    function(list[i], i);
  }
}

/* void callBack(int eleman) {
  print("Elaman $eleman");
} */
