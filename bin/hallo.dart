void main (){
  print('HALLO, ANDIKA!');
  String nama = 'Andika';
  int umur = 11;
  double tinggi = 175.5;
  print('Nama saya $nama, umur saya $umur tahun, tinggi saya $tinggi cm.');

  var  fullname = '';
  print(fullname.isEmpty);

  print('Apakah saya dewasa? ${umur >= 18}');

// percabangan Boolean
  if (umur <= 10) {
    "print('Saya anak-anak')";
  }else if (umur > 10 && umur < 18) {
    print('Saya remaja');
  } else {
    print('Saya dewasa\n');    
  }
  // final costant adalah variabel yang nilainya tidak bisa diubah
  const double phi = 3.14;
  double jariJari = 7;
  double luasLingkaran = phi * jariJari * jariJari;
  print('Luas lingkaran dengan jari-jari $jariJari cm adalah $luasLingkaran cm persegi\n');

  final List<String> daftarHobi = ['Membaca', 'Bersepeda', 'Bermain Game'];
  print('Daftar hobi saya : $daftarHobi');

  final Map<String, String> biodata = {
    'Nama': nama.toUpperCase(),
    'Umur': umur.toString(),
    'Tinggi': tinggi.toString(),
  };

  print('Biodata saya : $biodata');

  //operasi aritmatika = + - * / % ~/
  // divide adalah mengembalikan nilai
  int a = 10; 
  int b = 10;
  int hasil = a ~/ b;
  print("hasil dari penghitungan operator divine = $hasil CM\n");

  // operator decrement dan increment
  int nilaiAwal = ++a;
  print('nilai awal setelah di pre increment adalah = $nilaiAwal');

  int nilaiAwal1 = --a;
  print('nilai awal setelah di decrement adalah = $nilaiAwal1'); 

  // operator perbandingan
  int c = 20;
  int d = 15;
  print('Apakah c sama dengan dari d? ${c == d}');
  print('Apakah c tidak sama dengan dari d? ${c != d}');
  print('Apakah c lebih kecil dari d? ${c < d}');
  print('Apakah c lebih besar dari d? ${c > d}\n');

  //operator assignment
  c ~/ d ;
  print('nilai c setelah di operasi assignment adalah = $c\n');

  //operator logical
  bool e = false;
  bool f = true;
  bool g = true;
  print('nilai $e OR $f adalah = ${e || f }');
  print('nilai $e AND $f adalah = ${e & f }');
  print('nilai $e AND $f OR $g adalah = ${e & f || g }');
  print('nilai $e XOR $f adalah = ${e ^ f }');
  print('nilai $e XOR $f OR $g adalah = ${e ^ f || g }');
  // Negasi
  print('nilai NOT $e adalah = ${!e }'); 
  print('nilai NOT $f adalah = ${!f }\n');   

  /* if bersarang nesrted
  */
  var nilaiUjian = 55;
  var nilaiuts = 50;
  var nilaiAkhir = (nilaiUjian + nilaiuts) / 2;

  if (nilaiAkhir <= 90 ) {
    if (nilaiAkhir >= 80) {
      print('Selamat Anda Lulus dengan nilai ujian akhir $nilaiAkhir');
    } else if (nilaiAkhir == 75) {
      print('Selamat Anda Lulus dengan nilai akhir $nilaiAkhir');      
    }else {
      print('Maaf Anda Tidak Lulus dengan nilai akhir $nilaiAkhir \n');
    }
  }
  // switch case
  var hariUjian = 'Senin';
  switch (hariUjian) {
    case 'Senin':
      print('Hari ini adalah Libur');
      break;
    case 'Selasa':
      print('Hari ini adalah Ujian Tengah Semester'); 
      break;  
    case 'Rabu':
      print('Hari ini adalah Ujian Akhir Semester');  
      break;
      default:
      print('Hari ini adalah Hari Biasa');
  }

  // Tenary Operator
  var nilai = 73;
  var hasilNilai = (nilai >= 75) ? 'Lulus' : 'Tidak Lulus';
  print('Dengan nilai $nilai maka Anda dinyatakan : $hasilNilai\n');

  // var name = "Naila";
  // var greeting = name ?? "Dika";
  // print('Hello, $greeting\n');

  //perulangan while

  var j = 1;
  while (j < 5) {
    print('while*');
    j++;
  }

    while(j < 20){
    print('* ke- $j');
    j+=2;
  }
}