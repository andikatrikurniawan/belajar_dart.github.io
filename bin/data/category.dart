class Category{
  final String barang;
  final int stok;
  Category(this.barang, this.stok);
}
// Membuat abstract class 
abstract class Location{
  String? location;
  // membuat abstract method
  void setLocation(String stret);
  
}

class City extends Location{
  @override
  void setLocation(String street){
    print("Ini adalah method Di $location dari class City,Bertepat Dijalan $street");
  }
  City(String location){
    this.location = location;
  }
}

// Mebuat Access Modifier
class AccessModifier{
  // Membuat public access modifier
  String name = "Joki";
  // Membuat private access modifier
  // final _address = "Bali";
  // Membuat protected access modifier
  int? _phoneNumber;

  int? _getPhoneNumber(){
    return _phoneNumber;
  }
}
// bisa acces modifier bisa diakses di dalam file yang sama
//dan tidak bisa diakses di luar di file yang beda 
void mai(){
  // akses modifier
  var access = AccessModifier();
  access.name = "Joko santoso";
  //tidak bisa diakses karena private access modifier
  access._phoneNumber = 08932001;
  access._getPhoneNumber(); 
}