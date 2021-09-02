import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      home:MyHomePage() ,//uygulamanın açılış sayfası
    );
  }
}


class MyHomePage extends StatelessWidget {
  int _sayac = 0;

  //Stateles widget dış etkenle değişmeyen durumlar için kullanırız. Veri gelmesi , buton tıklanması renk değişimi gibi
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("My First Widasaget"),),
        body: Center(child: Column(
          children: [
            Text("Bam",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            Text(_sayac.toString(),
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          ],
        ),),
        floatingActionButton: FloatingActionButton(
          onPressed: () {


          },
        )

    );
  }


/*
  Container containerOlustur(String harf, Color renk)
  { return Container(
    alignment: Alignment.center,
    height: 100,
    width: 100,
    color: renk,
    child: Text(
    harf
      ,style: TextStyle(fontSize: 54),),

  );

  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: Scaffold
        (
        appBar: AppBar(
          title: Text("Baslik"),
          backgroundColor: Colors.amber,
        ),
        body:Container(
          alignment: Alignment.center,
          width: 200,
          height: 200,
          child: Column(children: [
            dartRowOlustur(),
            dartColumnOlustur(),
          ],),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: ()
          {
            print("Tiklandi");
          },
          child: Icon(
            Icons.add

          ),

        ),
      )
    );
  }

 Column dartColumnOlustur() {
   return Column(
     children: [
       containerOlustur("K", Colors.deepPurple),
       containerOlustur("U",Colors.deepPurple.shade300),



     ],
   );
 }
}

 Row dartRowOlustur() {
 // MainAxisAlignment.spaceBetween;
  return Row(
    children: [
      Container(
        alignment: Alignment.center,
        height: 100,
        width: 100,
        color: Colors.orange,
        child: Text('K',style: TextStyle(fontSize: 54),),

      )

    ],
  );*/
}
