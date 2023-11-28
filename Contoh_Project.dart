import 'dart:io';

class Segi {
  int? sisi1;
  int? sisi2;
  int? sisi3;
  int? panjang;
  int? lebar;
  int? tinggi;
  int? v;
  int? alas;
  int? result;
}

// SEGI 4
class Segi4 extends Segi {
  void luas(panjang, lebar) {
    int result = panjang * lebar;
    print('\nLuas dari bangun segi empat  tersebut adalah $result\n');
  }

  void keliling(panjang, lebar) {
    int result = (panjang + lebar) * 2;
    print('\nKeliling dari bangun segi empat tersebut adalah $result\n');
  }
}

// SEGI 3
class Segi3 extends Segi {
  void luas(tinggi, sisi1, [sisi2, sisi3]) {
    double result = 1 / 2 * (sisi1 * tinggi);
    int results = result.toInt();
    print('\nLuas dari bangun segitiga tesebut adalah $results\n');
  }

  void keliling(sisi1, sisi2, sisi3) {
    result = sisi1 + sisi2 + sisi3;
    print('\nKeliling dari bangun segitiga tesebut adalah $result\n');
  }
}

void main() {
  int u = 1;

  for (int i = 1; i <= u;) {
    stdout.write(
        'Masukkan Jenis Bangun Datar \n a. Segi 3 \n b. Segi 4 \n (a/b) =');
    String? bangun = stdin.readLineSync();

    //SEGITIGA
    if (bangun == 'a') {
      var segi3 = Segi3();
      stdout.write('Masukkan Rumus\n a. luas \n b. keliling \n (a/b) ');
      String? lk = stdin.readLineSync();

      // LUAS SEGITIGA
      if (lk == 'a') {
        stdout.write('masukkan alas = ');
        int alas = int.parse(stdin.readLineSync()!);
        stdout.write('masukkan tinggi = ');
        int tinggi = int.parse(stdin.readLineSync()!);
        segi3.luas(alas, tinggi);

        //KELILING SEGITIGA
      } else if (lk == 'b') {
        stdout.write('masukkan sisi 1 = ');
        var sisi1 = num.parse(stdin.readLineSync()!);
        stdout.write('masukkan sisi 2 = ');
        num sisi2 = num.parse(stdin.readLineSync()!);
        stdout.write('masukkan sisi 3 = ');
        num sisi3 = num.parse(stdin.readLineSync()!);
        segi3.keliling(sisi1, sisi2, sisi3);
      } else {
        print('ente salah masukin input broo...');
        u++;
      }

      //SEGI EMPAT
    } else if (bangun == 'b') {
      var segi4 = Segi4();
      stdout.write('Masukkan Rumus\n a. luas \n b. keliling \n (a/b) ');
      String? lk = stdin.readLineSync();

      //LUAS SEGIEMPAT
      if (lk == 'a') {
        stdout.write('masukkan panjang = ');
        int panjang = int.parse(stdin.readLineSync()!);
        stdout.write('masukkan lebar = ');
        int lebar = int.parse(stdin.readLineSync()!);
        segi4.luas(panjang, lebar);

        // KELILING SEGIEMPAT
      } else if (lk == 'b') {
        stdout.write('masukkan panjang = ');
        int panjang = int.parse(stdin.readLineSync()!);
        stdout.write('masukkan lebar = ');
        int lebar = int.parse(stdin.readLineSync()!);
        segi4.keliling(panjang, lebar);
      } else {
        print('ente salah masukin input broo...');
        u++;
      }
    } else {
      print('ente salah masukin input broo...');
      u++;
    }
    stdout.write("Ulangi? (y/t) ");
    String? ans = stdin.readLineSync();
    if (ans == 'y') {
      u++;
    } else if (ans == 't') {
      print('okee makasi banyak broo...');
      u--;
    } else {
      print("ente salah masukin input broo...\nkuanggap stop");
    }
    i++;
  }
}
