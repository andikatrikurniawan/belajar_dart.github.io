import 'data/category.dart';
import 'data/interface.dart';
void main() {
  var category = Category("Buku", 10);
  print("Nama Barang : ${category.barang}");
  print("Stok Barang : ${category.stok}");
  print("");
  //kelas abstract tidak bisa di instansiasi, tetapi bisa di turunkan ke class lain
  var city = City("Amerika Serikat");
  print("Lokasi Negara : ${city.location}");
  city.setLocation("Jalan Amerika Serikat No. 204");
  // akses modifier
  var access = AccessModifier();
  access.name = "Joko santoso";print("");
  //tidak bisa diakses karena private access modifier
  // atau file yang berbeda tidak bisa mengakses private access modifier
  // access._phoneNumber = "089320010";

  //Membuat getter dan setter
  var prd = Product();
  prd.setPrice = 10000;
  prd.setStock = 50;
  print("Stok Barang  : ${prd.getStock}");
  print("");
  // main interface
  var interface = Avanza();
  interface.drive();
  print("Status Mobil : ${interface.stop()}");
  
}