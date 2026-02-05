/*
    function adalah blok kode yang digunakan untuk
    menjalankan sebuah perintah tertentu

    function parameter adalah nilai yang dikirimkan ke dalam function
    untuk diproses di dalam function tersebut
  */

  // function tanpa parameter
import 'dart:io';
void hello(String nama){
    print('Hello World, ini adalah function pertama saya di Dart\n');
    print('Belajar function di Dart sangat menyenangkan $nama\n');
  }

  void hitungLuasPersegi(){
    var sisi = 10;
    var luas = sisi * sisi;
    print('Luas Persegi dengan sisi $sisi cm adalah $luas cm persegi\n');
  }

  void name(){
    stdout.write('Masukkan nama Anda: ');
    var nama = stdin.readLineSync();
    print('Hello, $nama\n');
  }

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
  int tambah(int a, int b){
   int c = a+b;
   return c ;
  }
void main (){
  hello('Andika');
  hitungLuasPersegi();
  sapaUser('Naila',20, 175.5);
  name();
  print(tambah(200, 150));
  int hasil = tambah(200, 150);
  print('Hasil dari penjumlahan adalah: $hasil\n');
}