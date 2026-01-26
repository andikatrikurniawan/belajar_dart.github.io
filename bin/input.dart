/*
  import dart:io digunakan untuk mengambil input dari user
  melalui terminal/console
*/
import 'dart:io';

void main (){
  /*
    Stdout.write digunakan untuk menampilkan teks pada terminal/console
    tanpa membuat baris baru (new line)
  */
  stdout.write('Masukkan nama Anda: ');
  /*
    stdin.readLineSync() digunakan untuk membaca input dari user
    yang dimasukkan pada terminal/console
  */
  var nama = stdin.readLineSync();

  stdout.write('Masukan umur Anda: ');
  var umurInput = num.parse(stdin.readLineSync()!);
  print(  'Halo, Nama Saya $nama, Umur Saya $umurInput Tahun, Selamat datang di Dart programming language.\n');

  print('========= Mencoba belajar Study Kasus ===================');

  stdout.write('Masukkan panjang sisi persegi: ');
  var panjangsisi = num.parse(stdin.readLineSync()!);
  stdout.write('Masukkan lebar sisi persegi: ');
  var lebarsisi = num.parse(stdin.readLineSync()!);
  var luasPersegi = panjangsisi * lebarsisi;
  print('Luas persegi dengan panjang sisi $panjangsisi cm dan lebar persegi $lebarsisi cm,\nmaka hasil dari luas persegi adalah :$luasPersegi cm persegi.\n');

  print('========= Menghitung Volume ===================');
  stdout.write('Masukkan panjang balok: ');
  var panjangBalok = num.parse(stdin.readLineSync()!);
  var volumeBalok = panjangBalok * luasPersegi;
  print('========= Hasil Volume Balok ===================');
  print('maka hasil dari volume balok adalah : $volumeBalok cm kubik.\n');

}