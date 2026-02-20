/*
 interface adalah sebuah kontrak yang harus diikuti oleh 
 class yang mengimplementasikan interface tersebut, interface 
 digunakan untuk mendefinisikan method yang harus di 
 implementasikan oleh class yang mengimplementasikan interface tersebut, 
 interface juga bisa digunakan untuk membuat class yang tidak memiliki 
 implementasi method, interface juga bisa digunakan 
 untuk membuat class yang memiliki implementasi method, interface
*/

class Car {
  String name = " ";

  void drive(){

  }

  String stop(){
    return "Car Stopped";
  }
}

// membuat interface dengan menggunakan class biasa
 class Avanza implements Car{
  @override
  String name = "Avanza Xenia";
  @override
  void drive(){
    print("Mobil $name Sedang Berjalan");
  }
  @override
  String stop(){
    return "Car $name Stopped";
  }

 }
