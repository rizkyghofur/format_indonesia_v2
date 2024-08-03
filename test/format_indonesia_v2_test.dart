import 'package:format_indonesia_v2/format_indonesia_v2.dart';
import 'package:test/test.dart';

void main() {
  String regexHariPendek = 'Sen|Sel|Rab|Kam|Jum|Sab|Min';
  String regexHari = 'Senin|Selasa|Rabu|Kamis|Jumat|Sabtu|Minggu';
  String regexBulanPendek = 'Jan|Feb|Mar|Apr|Mei|Jun|Jul|Agu|Sep|Okt|Nov|Des';
  String regexBulan =
      'Januari|Februari|Maret|April|Mei|Juni|Juli|Agustus|September|Oktober|November|Desember';
  String regexKuartal = 'pertama|kedua|ketiga|keempat';

  test('print E', () {
    String waktu = Waktu().E();
    print(waktu);
    expect(waktu, matches(regexHariPendek));
  });

  test('print EEEE', () {
    String waktu = Waktu().EEEE();
    print(waktu);
    expect(waktu, matches(regexHari));
  });

  test('print LLL', () {
    String waktu = Waktu().LLL();
    print(waktu);
    expect(waktu, matches(regexBulanPendek));
  });

  test('print LLLL', () {
    String waktu = Waktu().LLLL();
    print(waktu);
    expect(waktu, matches(regexBulan));
  });

  test('print MMM', () {
    String waktu = Waktu().MMM();
    print(waktu);
    expect(waktu, matches(regexBulanPendek));
  });

  test('print MMMd', () {
    String waktu = Waktu().MMMd();
    print(waktu);
    expect(waktu, matches('\\d{1,2}\\s($regexBulanPendek)'));
  });

  test('print MMMEd', () {
    String waktu = Waktu().MMMEd();
    print(waktu);
    expect(
        waktu, matches('($regexHariPendek),\\s\\d{1,2}\\s($regexBulanPendek)'));
  });

  test('print MMMM', () {
    String waktu = Waktu().MMMM();
    print(waktu);
    expect(waktu, matches(regexBulan));
  });

  test('print MMMMd', () {
    String waktu = Waktu().MMMMd();
    print(waktu);
    expect(waktu, matches('\\d{1,2}\\s($regexBulan)'));
  });

  test('print MMMMEEEEd', () {
    String waktu = Waktu().MMMMEEEEd();
    print(waktu);
    expect(waktu, matches('($regexHari),\\s\\d{1,2}\\s($regexBulan)'));
  });

  test('print QQQQ', () {
    String waktu = Waktu().QQQQ();
    print(waktu);
    expect(waktu, matches('Kuartal\\s($regexKuartal)'));
  });

  test('print yMd', () {
    String waktu = Waktu().yMd();
    print(waktu);
    expect(waktu, matches('\\d{1,2}/\\d{1,2}/\\d{1,4}'));
  });

  test('print yMEd', () {
    String waktu = Waktu().yMEd();
    print(waktu);
    expect(waktu, matches('($regexHariPendek),\\s\\d{1,2}/\\d{1,2}/\\d{1,4}'));
  });

  test('print yMMM', () {
    String waktu = Waktu().yMMM();
    print(waktu);
    expect(waktu, matches('($regexBulanPendek)\\s\\d{1,4}'));
  });

  test('print yMMMd', () {
    String waktu = Waktu().yMMMd();
    print(waktu);
    expect(waktu, matches('\\d{1,2}\\s($regexBulanPendek)\\s\\d{1,4}'));
  });

  test('print yMMMEd', () {
    String waktu = Waktu().yMMMEd();
    print(waktu);
    expect(
        waktu,
        matches(
            '($regexHariPendek),\\s\\d{1,2}\\s($regexBulanPendek)\\s\\d{1,4}'));
  });

  test('print yMMMM', () {
    String waktu = Waktu().yMMMM();
    print(waktu);
    expect(waktu, matches('($regexBulan)\\s\\d{1,4}'));
  });

  test('print yMMMMd', () {
    String waktu = Waktu().yMMMMd();
    print(waktu);
    expect(waktu, matches('\\d{1,2}\\s($regexBulan)\\s\\d{1,4}'));
  });

  test('print yMMMMEEEEd', () {
    String waktu = Waktu().yMMMMEEEEd();
    print(waktu);
    expect(
        waktu, matches('($regexHari),\\s\\d{1,2}\\s($regexBulan)\\s\\d{1,4}'));
  });

  test('print EEEE, d MMMM y', () {
    String waktu = Waktu().format('EEEE, d MMMM y');
    print(waktu);
    expect(
        waktu, matches('($regexHari),\\s\\d{1,2}\\s($regexBulan)\\s\\d{1,4}'));
  });

  test('print dd MMM yyyy', () {
    String waktu = Waktu().format('dd MMM yyyy');
    print(waktu);
    expect(waktu, matches('\\d{1,2}\\s($regexBulanPendek)\\s\\d{1,4}'));
  });

  test('Rupiah tanpa 2 angka 0 di belakang', () {
    String rupiah = Rupiah().convertToRupiah(123456789);
    print(rupiah);
    expect(rupiah, "Rp 123.456.789");
  });

  test('Rupiah dengan 2 angka 0 di belakang', () {
    String rupiah =
        Rupiah().convertToRupiah(123456789, separator: '.', trailing: '.00');
    print(rupiah);
    expect(rupiah, 'Rp 123.456.789.00');
  });
}
