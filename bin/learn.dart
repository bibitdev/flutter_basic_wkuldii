// ignore_for_file: public_member_api_docs, sort_constructors_first
void tambah(int angka1, int angka2) {
  int hasil;
  hasil = angka1 + angka2;
  print(hasil);
}

class Orang {
  String name;
  int age;
  Orang({
    required this.name,
    required this.age,
  });
}

mixin Bulu {
  var sayap = 25;
}

class Burung {
  void terbang() {
    print('Burung bisa terbang');
  }
}

class Hewan extends Burung with Bulu {
  String nama;
  int kaki;
  Hewan(
    this.nama,
    this.kaki,
  );
}

void main() {
  print('Hello world');
  tambah(6, 2);

  var orang1 = new Orang(name: 'Bibit', age: 20);
  print('Halo nama saya ${orang1.name} usia saya ${orang1.age}');

  var orang2 = new Orang(name: 'Raikhan', age: 12);
  print('Orang 2 ${orang2.name}');

  var hewan1 = new Hewan('Burung', 2);
  hewan1.terbang();
  print('Burung memiliki sayap ${hewan1.sayap}');
}
