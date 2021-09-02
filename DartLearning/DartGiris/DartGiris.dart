void main() {
  //dart degiskenler
  int x = 1;
  double y = 3.12;
  print("degerler \n $x \n $y");
  //bir degiskenin degerini final ile tanımlarsak daha sonra           degistirimeyiz
  bool durum = true;
  print("$durum");
  int kurt = 31;
  print(kurt.isEven); //sayının çift olup olmadıgını kontrol eder
  print(kurt.isOdd);
  var a = 4;
  int sayi = a;
  sayi += a;
  print("sayi $sayi");
  String ad = "krt";
  print("benim ismim ${ad.toUpperCase()}");
  //Koleksiyonlar
  List alinacaklar = ["naber", 31, true];
  print(alinacaklar);
  List<int> sayilar = [1, 2, 3, 4, 5];
  List<String> ads = ["mustafa", "kurt", "dally"];
  print(ads[1][2]);
  ads.add("ayse");
  print(ads);
  print(ads.removeLast()); //son eklenen elemanı siler
  print(ads);
  print(ads.first);
  Map sozluk = {"come": "gel"};
  print(sozluk);
  //akış kontrolleri
  int yas=19;
  if(yas<18)
  {
    print("izleyemezsin");
  }
    
  else
  {
    print("izleyebilirsin");
  }
  
  List sayilar1=[17,3,4,5];
  for(var i=0;i<sayilar1.length;i++)
  {
    print("Liste Degerleri ${sayilar1[i]}");
  }
  //fonksiyon kullanımı
  void televizyonuAc()
  {
    print("First function is adding");
  }
  televizyonuAc();
  //fonksiyona parametre gonderme
    int sayiTopla(int x)
   {
    // print("deger ${x+2}");
      return x+2;
     
     
   }
 print(sayiTopla(3));
  dynamic stringFonk(String s)
  { String a;
    a=s+" Bey";
    return a;
  }
  print(stringFonk("kurt"));
  
  //tercihe baglı parametre
  terciheBagliParametre(int z, [int r=3])
  {
    print("Parametreler $z $r");
  }
  terciheBagliParametre(3);
  
 //senkron ve asenkron işlemler
  
  
  
  
  
  
  
  
  
  
  
  
}
