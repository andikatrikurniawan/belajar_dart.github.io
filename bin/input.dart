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
  print(  'Halo, Nama Saya $nama, Umur Saya $umurInput Tahun, Selamat datang di Dart programming language.');

}