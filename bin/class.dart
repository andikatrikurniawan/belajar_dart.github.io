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

   Orange operator +(Orange sor){
    var result = Orange();
    result.quantity = quantity + sor.quantity;
    return result;
   }
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
  var value = hitung1.quantity + hitung2.quantity;   
  print("Hasil Dari Perjumlahan adalah : $value");
}