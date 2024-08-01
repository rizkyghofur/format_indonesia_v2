import 'package:format_indonesia_v2/format_indonesia_v2.dart';

void main() {
  // using current time
  var waktu = Waktu();
  print(waktu
      .yMMMMEEEEd()); // Jumat, 19 Juni 2020 (this was the current time when development)

  var tanggal = Waktu();
  print(tanggal.format(
      'dd MMM yyyy')); // 19 Jun 2020 (this was the current time when development)

  // using specific time
  DateTime datetime = DateTime.parse('2020-05-31 12:34:13');
  print(Waktu(datetime).yMMMMEEEEd()); // Minggu, 31 Mei 2020

  // using numberic
  var numerik = Numerik(911);
  print(numerik.terbilang()); // sembilan ratus sebelas
}
