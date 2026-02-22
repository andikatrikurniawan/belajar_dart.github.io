/*
 interface adalah sebuah kontrak yang harus diikuti oleh 
 class yang mengimplementasikan interface tersebut, interface 
 digunakan untuk mendefinisikan method yang harus di 
 implementasikan oleh class yang mengimplementasikan interface tersebut, 
 interface juga bisa digunakan untuk membuat class yang tidak memiliki 
 implementasi method, interface juga bisa digunakan 
 untuk membuat class yang memiliki implementasi method, interface mendeklarasikan ulang
*/

abstract class Car {
  String name = " ";

  void drive(){

  }

  String stop(){
    return "Car Stopped";
  }
}
// membuat multiple interface
 abstract class Motor{
  String type = " ";
  void jenis (){
  
  }

  String merek(){
    return "Merek Motor";
  }
}

// membuat interface dengan menggunakan class biasa dan juga multiple interface
 class Avanza implements Car, Motor{
  @override
  String name = "Avanza Xenia";
  @override
  String type = "Supra X";
  @override
  void drive(){
    print("Mobil $name Sedang Berjalan");
  }
  @override
  String stop(){
    return "Car $name Stopped";
  }
  @override
  void jenis (){
    print("Jenis Motor Adalah : $type");
  }
  @override
  String merek(){
    return "Merek Motor : $type";
  }
 }

 // Membuat mixin adalah sebuah class yang bisa digunakan untuk 
 //menambahkan fungsionalitas ke class lain/ copy paste yang elegan
 // Menggunakan kata kunci on untuk menentukan class yang bisa menggunakan mixin tersebut
 abstract class Multimedia{

 }
 mixin Playable on Multimedia {
  String? name;

  void play(){
    print("Play : $name");
  } 
 }

 mixin Stoppable on Multimedia {
  num? speed;

  void stop(){
    print("Stop at speed : $speed Mph");
  }
 }

 class MusicPlayer extends Multimedia with Playable, Stoppable{
    void playMusic(){
      print("Playing music : $name");
    }
 }

 class VideoPlayer extends Multimedia with Playable, Stoppable{
  void playVideo(){
    print("Playing video : $name");
  }
 }

 // Membuat object toString()
 class Person{
  int? id;
  String? name;
  int? age;
  Person(this.id,this.name);

  @override
  String toString(){
    return "Person : {ID =$id, Nama = $name, Umur =  $age}";
   }

   // Membuat Equals Operator
   // mengovverride
  //  @override
  // bool operator == (Object other){
  //   if (other is Person){
  //     if(id != other.id){
  //       return false;
  //     }else if (name != other.name){
  //       return false;
  //     }else {
  //       return true;
  //     }
  //   }else{
  //     return false;
  //   }
  // }
  @override
  bool operator == (Object other) =>
   identical(this, other) || other is Person
   && runtimeType == other.runtimeType && id == other.id
   && name == other.name; 
  //Membuat HashCode Getter
  // @override
  // int get hashCode {
  //   var result = id.hashCode;
  //   result += name.hashCode;
  //   return result;
  // }
  // atau bisa menggunakan expression body
  @override
  int get hashCode => id.hashCode ^ name.hashCode;
  }
  // membuat callable class adalah class yang bisa dipanggil
  //seperti function. menggunakan method call()
  class Sum{
    num? first;
    num? second;

    Sum(this.first, this.second);

    num call(){
      return first! + second!;
    }
  }
  // membuat typedef adalah alias untuk tipe data yang sudah ada 
  typedef Perkalian = Sum;
  typedef Pembagian = Sum;
 
  // typedef juga bisa digunakan untuk membuat function type alias
  typedef Filter = String Function(String);

  void say(String name, Filter saring){
    print("Hello ${saring(name)}");
  }
  /*
  static member adalah member yang dimiliki oleh class itu sendiri 
  dan tidak bisa diakses melalui object
  */

  class Application{
    // bisa nya ditambahkan kata kunci final karena static member tidak bisa diubah nilainya
    static final author = 10;
    static final String version = "1.0.3.14";
  } 
  // Static Methoad 
  class Math {
    static final num pi = 3.14;
    static num add(num a, num b) => a+b / pi;
  }
  void main(){
    //main typedef function type alias
    say("Andi", (value)=> value.toUpperCase());
    print("");
    // main static member
    // Application.author = "Belajar Dart Lanjutan";
    // Application.version = "2.20.30";
    print("Author : ${Application.author}");
    print("Version : ${Application.version}");
    // main static method
    print("Hasil Penjumlahan Static Method :${Math.add(100,200)}");
  }