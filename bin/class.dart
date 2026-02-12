/*
  1. Membuat class dengan beberapa property
  2. Membuat object dari class tersebut
  3. Mengakses dan memodifikasi property dari object tersebut
  4. Memanipulasi Field dengan method bawaan String dan int
  5. Menambahkan method constructur 
  6. Menambahkan method dengan expression body
  7. Menambahkan Extenssion body
*/
class FirstClass{
  String name = "Andika";
  int age = 20;
  final String address = "Indonesia";

  // Menambahkan method constructor
  void personalData(String paraname){
    print("Haii Nama Saya : $paraname, Umur Saya : $age Tahun");
  }

  String hallo(){
    return "Aku akan Konsisten belajar Dart setiap hari";
  }
  void info(){
    print("Ini adalah method info dari class FirstClass");
  }

// method dengan expression body
  void greetting() => print("Ini adalah method Expreession Body");
  num hitung (num a, num b) => a * b;

}
  //Extension Method
  extension Extension1 on FirstClass{
    void boy (String paranmee, int age) => print("Hello My name : $paranmee, From $address, Umur Saya $age Tahun");
    }

  // Menggunakan Operator
  class Orange{
    int quantity = 0;

   Orange operator *(Orange sor){
    var result = Orange();
    result.quantity = quantity * sor.quantity;
    return result;
    }
  }
   
  // Membuat constructor, Construktor tidak bisa dibuat lebih dari satu
  class Engine{
    var honda = "";
    var jenis = "";
    Engine(String motor, String merek){
      honda = motor;
      jenis = merek;
    }
    
  }
  // Membuat variable shadowing
  class Mesin{
    var honda = "Vario";
    var jenis = "Honda";
    Mesin(String honda, String jenis){
      honda = honda;
      jenis = jenis;
    }
  }
  // Membuat this keyword
  class Spesifikasi{
    var merek = "Samsung";
    var tahun = 2023;

    Spesifikasi(String merek, int tahun){
      this.merek = merek;
      this.tahun = tahun;
    }
  }
// initializing formal parameter
  class Parameter{
    var merek = "honda";
    var tahun = "2023";

    Parameter(this.merek, this.tahun);
    //membuat named constructor bisa membuat constructor lebih dari satu
    Parameter.code(this.merek, this.tahun){
      print('Ini Adalah Named Constructor : $merek dan $tahun');
    }
    Parameter.hp(this.merek){
      print('Ini Adalah Nama merek  : $merek');
    }
    
    Parameter.jenis(this.tahun){
      print('Ini Adalah Tahun Jenis : $tahun');
    }
    //Redirecting Constructor
    Parameter.redirect(String merek) : this(merek, "No Tahun");
    Parameter.fun(String tahun) :this("No Merek", tahun);
    //Redirecting Named Constructor
    Parameter.newConstruktor() : this.redirect("Indonesia");
  }
void main(){
  FirstClass first1 = FirstClass();
  print(first1.name.toUpperCase());
  print(first1.age);
  print(first1.address.toUpperCase());
  print("==================================================");

  var first2 = FirstClass();
  print(first2.name = "Naila".toUpperCase());
  print(first2.age = 30);
  // print(First2.Address = "Malaysia".toLowerCase()); Tidak bisa diubah karena final
  print("================================================= ");
  first2.info();
  first2.personalData("Kurniaawan".toUpperCase());
  print(first2.hallo().toUpperCase());

  print("================================================== ");
  var classFirstMethod = FirstClass();
  classFirstMethod.greetting();
  double hasil = classFirstMethod.hitung(10, 50).toDouble();
  print("Hasil dari perkalian adalah : $hasil");
  print(" ");
  classFirstMethod.boy("Adam",25);
  print("=====================================================");
  var hitung1 = Orange();
  hitung1.quantity = 10;
  var hitung2 = Orange();
  hitung2.quantity = 20;
  var value = hitung1.quantity * hitung2.quantity;   
  print("Hasil Dari Perjumlahan adalah : $value");
  print(" ");
  var bengkel = Engine("Beat 2025", "Honda");
  print(bengkel.honda); print(bengkel.jenis); print(" ");
  var ba = Mesin("Mio","2023" );
  print(ba.honda);print(ba.jenis); print(" "); 
  var cs = Spesifikasi("Realme", 2026);
  print(cs.merek); print(cs.tahun); print(" ");
  var fp = Parameter("Baris", "300");
  print(fp.merek); print(fp.tahun);print("");
  Parameter.code("Nama Dulu", "1990"); print(" ");
  Parameter.hp("xiaomi"); 
  Parameter.jenis("2024");print(" ");
  var rd = Parameter.redirect('Poco');
  print(rd.merek);
  print(rd.tahun); print(" ");
  var rd1 = Parameter.fun('2025');
  print(rd1.merek);
  print(rd1.tahun); print("");
  var rd2 = Parameter.newConstruktor();
  print(rd2.merek);
  print(rd2.tahun);     
}