import 'package:flutter/foundation.dart';
import 'package:format_indonesia_v2/format_indonesia_v2.dart';
import 'package:test/test.dart';

void main() {
  String regexHariPendek = 'Sen|Sel|Rab|Kam|Jum|Sab|Min';
  String regexHari = 'Senin|Selasa|Rabu|Kamis|Jumat|Sabtu|Minggu';
  String regexBulanPendek = 'Jan|Feb|Mar|Apr|Mei|Jun|Jul|Agu|Sep|Okt|Nov|Des';
  String regexBulan =
      'Januari|Februari|Maret|April|Mei|Juni|Juli|Agustus|September|Oktober|November|Desember';
  String regexKuartal = 'pertama|kedua|ketiga|keempat';

  test('debugPrint E', () {
    String waktu = Waktu().E();
    debugPrint(waktu);
    expect(waktu, matches(regexHariPendek));
  });

  test('debugPrint EEEE', () {
    String waktu = Waktu().EEEE();
    debugPrint(waktu);
    expect(waktu, matches(regexHari));
  });

  test('debugPrint LLL', () {
    String waktu = Waktu().LLL();
    debugPrint(waktu);
    expect(waktu, matches(regexBulanPendek));
  });

  test('debugPrint LLLL', () {
    String waktu = Waktu().LLLL();
    debugPrint(waktu);
    expect(waktu, matches(regexBulan));
  });

  test('debugPrint MMM', () {
    String waktu = Waktu().MMM();
    debugPrint(waktu);
    expect(waktu, matches(regexBulanPendek));
  });

  test('debugPrint MMMd', () {
    String waktu = Waktu().MMMd();
    debugPrint(waktu);
    expect(waktu, matches('\\d{1,2}\\s($regexBulanPendek)'));
  });

  test('debugPrint MMMEd', () {
    String waktu = Waktu().MMMEd();
    debugPrint(waktu);
    expect(
        waktu, matches('($regexHariPendek),\\s\\d{1,2}\\s($regexBulanPendek)'));
  });

  test('debugPrint MMMM', () {
    String waktu = Waktu().MMMM();
    debugPrint(waktu);
    expect(waktu, matches(regexBulan));
  });

  test('debugPrint MMMMd', () {
    String waktu = Waktu().MMMMd();
    debugPrint(waktu);
    expect(waktu, matches('\\d{1,2}\\s($regexBulan)'));
  });

  test('debugPrint MMMMEEEEd', () {
    String waktu = Waktu().MMMMEEEEd();
    debugPrint(waktu);
    expect(waktu, matches('($regexHari),\\s\\d{1,2}\\s($regexBulan)'));
  });

  test('debugPrint QQQQ', () {
    String waktu = Waktu().QQQQ();
    debugPrint(waktu);
    expect(waktu, matches('Kuartal\\s($regexKuartal)'));
  });

  test('debugPrint yMd', () {
    String waktu = Waktu().yMd();
    debugPrint(waktu);
    expect(waktu, matches('\\d{1,2}/\\d{1,2}/\\d{1,4}'));
  });

  test('debugPrint yMEd', () {
    String waktu = Waktu().yMEd();
    debugPrint(waktu);
    expect(waktu, matches('($regexHariPendek),\\s\\d{1,2}/\\d{1,2}/\\d{1,4}'));
  });

  test('debugPrint yMMM', () {
    String waktu = Waktu().yMMM();
    debugPrint(waktu);
    expect(waktu, matches('($regexBulanPendek)\\s\\d{1,4}'));
  });

  test('debugPrint yMMMd', () {
    String waktu = Waktu().yMMMd();
    debugPrint(waktu);
    expect(waktu, matches('\\d{1,2}\\s($regexBulanPendek)\\s\\d{1,4}'));
  });

  test('debugPrint yMMMEd', () {
    String waktu = Waktu().yMMMEd();
    debugPrint(waktu);
    expect(
        waktu,
        matches(
            '($regexHariPendek),\\s\\d{1,2}\\s($regexBulanPendek)\\s\\d{1,4}'));
  });

  test('debugPrint yMMMM', () {
    String waktu = Waktu().yMMMM();
    debugPrint(waktu);
    expect(waktu, matches('($regexBulan)\\s\\d{1,4}'));
  });

  test('debugPrint yMMMMd', () {
    String waktu = Waktu().yMMMMd();
    debugPrint(waktu);
    expect(waktu, matches('\\d{1,2}\\s($regexBulan)\\s\\d{1,4}'));
  });

  test('debugPrint yMMMMEEEEd', () {
    String waktu = Waktu().yMMMMEEEEd();
    debugPrint(waktu);
    expect(
        waktu, matches('($regexHari),\\s\\d{1,2}\\s($regexBulan)\\s\\d{1,4}'));
  });

  test('debugPrint EEEE, d MMMM y', () {
    String waktu = Waktu().format('EEEE, d MMMM y');
    debugPrint(waktu);
    expect(
        waktu, matches('($regexHari),\\s\\d{1,2}\\s($regexBulan)\\s\\d{1,4}'));
  });

  test('debugPrint dd MMM yyyy', () {
    String waktu = Waktu().format('dd MMM yyyy');
    debugPrint(waktu);
    expect(waktu, matches('\\d{1,2}\\s($regexBulanPendek)\\s\\d{1,4}'));
  });
}
