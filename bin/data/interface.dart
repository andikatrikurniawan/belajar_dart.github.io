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