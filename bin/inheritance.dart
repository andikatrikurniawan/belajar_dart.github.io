//parent class
class Manager {
  String? name;
  String? address;
  int? age;

  void setManager(String name, int age){
    print("Hallo My name : $name , From : $address, salam kenal pak ${this.name} Manager, umur saya ${this.age} Tahun");
  }
}

  // membuat kelas inheritance atau kelas turunan 
  // chilld class
  class President extends Manager{
    // Membuat Method Override
    @override
    void setManager(String name, int age){
    print("Hallo My name : $name , From : $address, salam kenal pak ${this.name} President, umur saya ${this.age} Tahun");
  }
  }

  class Clevel extends Manager{
    // Membuat Method Override
    @override
    void setManager(String name, int age){
    print("Hallo My name : $name , From : $address, salam kenal pak ${this.name} Clevel, umur saya ${this.age} Tahun");
  }
   void boss(String name){
    print("Hallo My name : $name ,salam kenal pak ${this.name} Boss");
   }
  }
  // Membuar Field Overriding
  class Dart extends Manager{
    @override
    String? name = "Judika";
    String? address = "Bali"; 
  }

  // Membuat Super Keyword
  class SuperClass {
    String nama = "Joki";
    String getCorner(){
      return "Hello My name : $nama SuperClass";
    }
  }

  class SubClass extends SuperClass{
    @override
    String getCorner(){
      var nama = 20;
      return "${super.getCorner()}, My Age : $nama";
    }

    String getSuperCorner(){
      return super.getCorner();
    }
  }

  // Membuat super constructor
  class SuperConstructor{
    String ? nama;
    SuperConstructor(this.nama);
  }

  class SuperConstructorChild extends SuperConstructor{
    // menggunakan kata kunci super bisa menggunakan body atau expression body
    SuperConstructorChild(String nama) : super(nama){
      print("Ini adalah menggunakan super constructor dengan nama : $nama");
    }

  }


  void main () {
    var manager = Manager();
    manager.name = "Supriadi";
    manager.address = "Surabaya";
    manager.age = 50;
    manager.setManager("Andika", 20);
    print("");
    var vp = President();
    vp.name = "Supriadi";
    vp.address = "Bandung";
    vp.age = 20;
    vp.setManager("Naila",20);
    print("");
    var co = Clevel();
    co.name = "Supriadi";
    co.address = "Bandung";
    co.age = 25;
    co.setManager("Jokowi",40);
    print("");
    co.boss("Kurniawan");
    print("");
    var drt = Dart();
    drt.age = 20;
    drt.setManager("Reymusa",2);
    print("");
    var sub = SubClass();
    print(sub.getSuperCorner());
    print(sub.getCorner());
    print("");
    SuperConstructorChild("Surya");
  }
