import 'data/category.dart';
import 'data/interface.dart';
import 'data/repository.dart';
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

  //Main getter dan setter
  var prd = Product();
  prd.setPrice = 10000;
  prd.setStock = 50;
  print("Stok Barang  : ${prd.getStock}");
  print("");
  // main interface
  var interface = Avanza();
  interface.drive();
  print("Status Mobil : ${interface.stop()}");
  interface.jenis();
  print(interface.merek());
  print("");
  // main mixin
  var media = MusicPlayer();
  media.name = "Spotify";
  media.play();
  media.speed = 128;
  media.stop();
  media.playMusic();
  print("");
  //main toString
  var person = Person(1,"Andika");
  person.age = 35;
  print(person);
  // main equals operator
  var person1 = Person(1, "Kurniawan");
  var person2 = Person(1, "Kurniawan");
  print("Apakah person1 sama dengan person2? ${person1 == person2}");
  print(person1 == person2);
  //main hasCode Getter
  print("Hash Code Person 1 :${person1.hashCode}");
  print("Hash Code Person 2 :${person2.hashCode}");
 print("");
 // main NoSuchMethod
 var repo = Repository("Users");
 repo.id("1");
 repo.name("Komputer");
 repo.location("Bandung");
 repo.age(25);
 print("");
 // main callable class
 var callable = Sum(10, 10);
 print("Hasil Penjumlahan callable clas : ${callable()}");
  // main typedef
  var kali = Perkalian(5,5);
  print(kali());
  print("");
  //main enum 
  var customer = Customer("Andika",Gender.men, CinemaType.vip);
 print("Nama Customer : ${customer.name}");
 print("Jenis Kelamin : ${customer.gen}");
 print("Tipe Cinema : ${customer.type}");
 print(CinemaType.values);
 print(Gender.values);
 print("");
 // main exceptions
 // menambahkan stackTrace proses debuggingnya
try {
  Validation.validate("", "");
 } on ValidationException catch (e, stackTrace){
  print("Validation Failed : ${e.message}");
  print("Stack Trace : ${stackTrace.toString()}");
 } on Exception catch (e){
  print("Validation : ${e.toString()}");
  //Finally tetap menampilkan output walaupun code yang diatas salah
 } finally{
  print ("Validation Process Completed");
 }
 print("Lanjut");
}