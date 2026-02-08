/*
    function adalah blok kode yang digunakan untuk
    menjalankan sebuah perintah tertentu

    function parameter adalah nilai yang dikirimkan ke dalam function
    untuk diproses di dalam function tersebut
  */

  // function tanpa parameter

void hello(String nama){
    print('Hello World, ini adalah function pertama saya di Dart\n');
    print('Belajar function di Dart sangat menyenangkan $nama\n');
  }

  void hitungLuasPersegi(){
    var sisi = 10;
    var luas = sisi * sisi;
    print('Luas Persegi dengan sisi $sisi cm adalah $luas cm persegi\n');
  }

  // void name(){
  //   stdout.write('Masukkan nama Anda: ');
  //   var nama = stdin.readLineSync();
  //   print('Hello, $nama\n');
  // }

  // function dengan parameter
  void sapaUser(String nama, int umur, double tinggi){
    print('Halo, Saya $nama, Umur Saya $umur Tahun, Tinggi Saya $tinggi Selamat datang di Dart programming language\n');
  }

  /*
    function dengan nilai kembalian (return value)
    yaitu function yang mengembalikan sebuah nilai setelah function tersebut dijalankan
    dan tidak bisa digunakan untuk function void
  */
  // function return value
  num tambah(num a, num b){
   num c = a+b;
   return c ;
  }

  double getArea(double radius, int sisi){
    double wilayah = 3.14 * radius * sisi;
    return wilayah;
  }
  //  Arrow Function & short-hand syntax
  void getArrow(String nama) => print('Hello World, $nama, ini adalah function Arrow saya di Dart\n');

  String arrow(String x, String y) => x + y;

  // Required parameter
  void city(String name1, String name2, String name3){
    print("Nama Kota 1 : $name1");
    print("Nama Kota 2 : $name2");
    print("Nama Kota 3 : $name3");
  }
  // //opsional posisi parameter
  // void region(String name1, String name2, [String name3]){
  //   print("Nama Negara 1 : $name1");
  //   print("Nama Negara 2 : $name2");
  //   print("Nama Negara 3 : $name3");
  // }

  //opsional named parameter
  // void region(int value1, {int value2, int value3}){
  //   print("Nama Negara 1 : $value1");
  //   print("Nama Negara 2 : $value2");
  //   print("Nama Negara 3 : $value3");
  //   print("Hasil Penjumalahan : ${value1 + value2 % value3}");
  // }

  //opsional Default parameter
  void region(int value1, {int value2 = 3, int value3 = 20}){
    print("Value 1 : $value1");
    print("Value 2 : $value2");
    print("Value 3 : $value3");
    print("Hasil Penjumalahan : ${value1 + value2 % value3}\n");
  }

  //Exception Handling pada Function
  void divide(){
    print("Case 1: Menggunakan on IntegerDivisionByZeroException");
    try{
      var a = 12;
      var b = 0;
      int result = a ~/ b;
      print('Hasil pembagian $a ~/ $b = $result');
    } on IntegerDivisionByZeroException {
      print('Error: Pembagian dengan nol tidak diperbolehkan.');
    }

    print("\nCase 2: Menggunakan catch Exception");  
    try{
      var a = 12;
      var b = 0;
      int result = a ~/ b;
      print('Hasil pembagian $a ~/ $b = $result');
    }catch (e){
      print('Error: $e');
    }

    print("\nCase 3: Menggunakan StackTrace");  
    try{
     var a = 12;
      var b = 0;
      int result = a ~/ b;
      print('Hasil pembagian $a ~/ $b = $result');
    }catch (e, s){
      print("stackTrace: $s");
    }

    print("\nCase 4 : Menggunakan Finally");
    try{
      var a = 12;
      var b = 0;
      int result = a ~/ b;
      print('Hasil pembagian $a ~/ $b = $result');
    }catch (e){
      print(e);
    }finally{
      print('Eksekusi blok finally selesai');
    }
    print("\nCase 5 : Membuat Custom Exception");
    try{
      depositMoney( 100);
    }catch(e){
      if(e is Custom){
        print(e.errorMessage());
      }
    }finally{
      print("Telah Selesai");
    }
  }
  class Custom implements Exception{
      String errorMessage(){
        return 'Custom Exception: Jumlah Deposit Tidak Boleh Negatif.';
      }
    }
    void depositMoney(int amount){
      if(amount < 0){
        throw Custom();
      }
    }

void main (){
  hello('Andika');
  hitungLuasPersegi();
  sapaUser('Naila',20, 175.5);
  // name();
  print(tambah(200.5, 150.4));
  double hasil = tambah(200.4, 150.4).toDouble();
  print('Hasil dari penjumlahan adalah: $hasil\n');
  double rectArea = getArea(7.5, 4);
  print('Luas Lingkaran dengan jari-jari  dan sisi  adalah: $rectArea\n');
  print(getArea(33, 10));
   getArrow('Andika');
    String totalLength = arrow('Andika', 'Naila');
    print('Total panjang karakter dari kedua string adalah: $totalLength\n');
    city("Jakarta", "Bandung", "Solo");
    // Opsional posisition parameter, Regiona("Jakarta", "Bandung");
    // Opsional named parameter , region(10, value3: 20, value2: 30); 
    region(10, value3: 20, value2: 30);
    divide();
}