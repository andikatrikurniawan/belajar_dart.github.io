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
  // int? _phoneNumber;

  // int? _getPhoneNumber(){
  //   return _phoneNumber;
  // }
}
// bisa acces modifier bisa diakses di dalam file yang sama
//dan tidak bisa diakses di luar di file yang beda 
// void main(){
//   // akses modifier
//   var access = AccessModifier();
//   access.name = "Joko santoso";
//   //tidak bisa diakses karena private access modifier
//   access._phoneNumber = 08932001;
//   access._getPhoneNumber(); 
// }

//Getters dan Setters, kalo tidak melakukan validasi pada setter lebih baik
// munggunakan field public, atau tidak menggunakan getter dan setter
 class Product{
  double _price = 0;
  int stock = 0;
  // membuat getter adalah methoad digunakan untuk mengambil nilai dari variable
  // juga bisa menggunakan expression body
  double get getPrice =>  _price;
  // membuat setter adalah methoad digunakan untuk mengubah nilai dari variable
  set setPrice(double value){
    _price = value ;
    if (_price > 0){
        print("Harga Barang : $_price");
    } 
    
  }
  int get getStock{
    return stock;
  }

  set setStock(int value) => stock = value ; 
 } 

// membuat Enum tipe data yang memiliki nilai tetap
 enum CinemaType {
  reguler,
  premium,
  vip
 }

 enum Gender{
  men,
  women,
 }

 class Customer{
  String? name;
  Gender gen;
  CinemaType type;


  Customer(this.name, this.gen,this.type);
 }
 // membuat class exception
 class ValidationException implements Exception{
  final String message;

  ValidationException(this.message);
 }

 // membuat Exception/ mentrigger Exception 
 class Validation{
  static void  validate(String username, String password){
   if (username == ""){
      throw ValidationException("Username is blank");
    }else if (password == ""){
      throw ValidationException("Password is Black");
      //multiple exception
    }else if (username != "Admin" || password != "123"){
      throw ValidationException("Login Failed");
    }
 }
}
/*
  Standard Annotation/ Meta data
    @Deprecated : Menandai bahwa kode tersebut sudah tidak direkomendasikan
    digunakan, digunakan constan constractor
    @override : Menandai bahwa field atau method tersebut merupakan 
    overriding dari parent nya
  */

  class Sample {
    @override
    String toString(){
      return "Sample";
    }
    @Deprecated("Don't Use it Annymore")
    void doNotCallMe(){}
  }
  // membuat annotation sendiri
  class Todo {
    final String todo;

   const Todo(this.todo);
  }

  class Application{
    @Todo("Field Is not releasee")
    String? namae;
  }