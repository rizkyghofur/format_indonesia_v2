# format_indonesia

Translate to Indonesian for weekday names, month names, quarter names, and Rupiah inspired by [DateFormat](https://api.flutter.dev/flutter/intl/DateFormat-class.html).
This package is also upgraded version from [format_indonesia](https://pub.dev/packages/format_indonesia)

## Example

```dart
import 'package:format_indonesia_v2/format_indonesia_v2.dart';

void main() {
  // using current time
  var waktu = Waktu();
  print(waktu.yMMMMEEEEd()); // Jumat, 19 Juni 2020 (this was the current time when development)

  // using specific time
  DateTime datetime = DateTime.parse('2020-05-31 12:34:13');
  print(Waktu(datetime).yMMMMEEEEd()); // Minggu, 31 Mei 2020
}
```

## Supported formatters

```
Formatter                       Result
---------                       ------
Waktu().E()                     Jum
Waktu().EEEE()                  Jumat
Waktu().LLL()                   Jun
Waktu().LLLL()                  Juni
Waktu().MMM()                   Jun
Waktu().MMMd()                  19 Jun
Waktu().MMMEd()                 Jum, 19 Jun
Waktu().MMMM()                  Juni
Waktu().MMMMd()                 19 Juni
Waktu().MMMMEEEEd()             Jumat, 19 Juni
Waktu().QQQQ()                  Kuartal kedua
Waktu().yMd()                   19/6/2020
Waktu().yMEd()                  Jum, 19/6/2020
Waktu().yMMM()                  Jun 2020
Waktu().yMMMd()                 19 Jun 2020
Waktu().yMMMEd()                Jum, 19 Jun 2020
Waktu().yMMMM()                 Juni 2020
Waktu().yMMMMd()                19 Juni 2020
Waktu().yMMMMEEEEd()            Jumat, 19 Juni 2020
```

## Pattern formatter

```dart
import 'package:format_indonesia_v2/format_indonesia_v2.dart';

void main() {
  // using current time
  var waktu = Waktu();
  print(waktu.format('dd MMM yyyy')); // 19 Jun 2020 (this was the current time when development)

  // using specific time
  DateTime datetime = DateTime.parse('2020-05-31 12:34:13');
  print(Waktu(datetime).format('EEEE, d MMMM y')); // Minggu, 31 Mei 2020
}
```

## Rupiah formatter

```dart
import 'package:format_indonesia_v2/format_indonesia_v2.dart';

void main() {
  // using rupiah as String
  var rupiah = Rupiah();
  print(rupiah.convertToRupiah(123456789)); // Rp 123.456.789

  // using rupiah as String with .00 format
  print(rupiah =
        Rupiah().convertToRupiah(123456789, separator: '.', trailing: '.00')); // Rp 123.456.789.00
}
```

Supported patterns is referenced to [DateFormat].

# Numerik class

In this version, provides number to text convertion.

## Example

```dart
import 'package:format_indonesia_v2/format_indonesia_v2.dart';

void main() {
  var numerik = Numerik(911);
  print(numerik.terbilang()); // sembilan ratus sebelas
}
```

# Emoji class

In this version, provides emoji flag Indonesia 🇮🇩 to text.

## Example

```dart
import 'package:format_indonesia_v2/format_indonesia_v2.dart';

void main() {
  var indoEmoji = Emoji().indoEmoji;
  print("Saya cinta ${Emoji().indoEmoji}"); // Saya Cinta 🇮🇩
}
```

# Thank you

It is really helpful if there are ideas, suggestions, or input for next improvement.
