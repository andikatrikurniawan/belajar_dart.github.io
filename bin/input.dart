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

  print('|========= Mencoba belajar Study Kasus Menghitung Persegi ===================| \n');

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
  print('========= Menentukan Hari Ujian ===========================\n');
  stdout.write('Masukkan Hari :'.toUpperCase());
  var hariUjian = stdin.readLineSync()!.toUpperCase();
 switch (hariUjian) {
    case 'SENIN':
      print('Hari ini adalah Libur');
      break;
    case 'SELASA':
      print('Hari ini adalah Ujian Tengah Semester'); 
      break;  
    case 'RABU':
      print('Hari ini adalah Ujian Akhir Semester');  
      break;
      default:
      print('Hari ini adalah Hari Biasa\n');
  }
  print('|========= Menghitung Nilai Akhir =======================| \n');
  stdout.write('| Masukkan nilai ujian akhir Anda :');
  var nilaiUjianAkhir =  stdin.readLineSync();
  stdout.write('| Masukkan nilai uts Anda :');
  var nilaiUts = stdin.readLineSync();
  var nilaiAkhir = (num.parse(nilaiUjianAkhir!) + num.parse(nilaiUts!)) / 2;
  print("|========================================================|");
  if (nilaiAkhir < 100 ) {
    if (nilaiAkhir > 80) {
      print('| Selamat $nama Lulus dengan nilai ujian akhir : $nilaiAkhir |');
    } else if (nilaiAkhir >= 75) {
      print('| Selamat $nama Lulus dengan nilai akhir : $nilaiAkhir |');      
    }else {
      print('| Mohon Maaf $nama Tidak Lulus dengan nilai akhir : $nilaiAkhir |');
    }
  }
  print("|========================================================|\n");

  print('========= study kasus kalkulator ===================\n');

  stdout.write('Masukkan angka pertama: ');
  var angkaPertama = num.parse(stdin.readLineSync()!);
  stdout.write('Masukkan angka kedua: ');
  var angkaKedua = num.parse(stdin.readLineSync()!);
  stdout.write('Pilih operasi (+, -, *, /): ');
  var operasi = stdin.readLineSync();
  num hasil;
  switch (operasi) {
    case '+':
      hasil = angkaPertama + angkaKedua;
      print('Hasil: $angkaPertama + $angkaKedua = $hasil\n');
      break;
    case '-':
      hasil = angkaPertama - angkaKedua;
      print('Hasil: $angkaPertama - $angkaKedua = $hasil\n');
      break;
    case '*':
      hasil = angkaPertama * angkaKedua;
      print('Hasil: $angkaPertama * $angkaKedua = $hasil\n');
      break;
    case '/':
      if (angkaKedua != 0) {
        hasil = angkaPertama / angkaKedua;
        print('Hasil: $angkaPertama / $angkaKedua = $hasil\n');
      } else {
        print('Error: Pembagian dengan nol tidak diperbolehkan.\n');
      }
      break;
    default:
      print('Operasi tidak valid. Silakan pilih +, -, *, atau /.\n');
  }
}