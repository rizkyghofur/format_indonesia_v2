# format_indonesia

Translate to Indonesian for weekday names, month names, quarter names, and Rupiah inspired by [DateFormat](https://api.flutter.dev/flutter/intl/DateFormat-class.html).
This package is also upgraded version from [format_indonesia](https://pub.dev/packages/format_indonesia)

## Example

```dart
import 'package:format_indonesia_v2/format_indonesia_v2.dart';

void main() {
  // using current time
  var waktu = Waktu();
  print(waktu.yMMMMEEEEd()); // Rabu, 26 Maret 2025 (this was the current time when development)

  // using specific time
  DateTime datetime = DateTime.parse('2025-05-26 00:01:15');
  print(Waktu(datetime).yMMMMEEEEd()); // Rabu, 26 Maret 2025
}
```

## Supported formatters

```
Formatter                       Result
---------                       ------
Waktu().E()                     Rab
Waktu().EEEE()                  Rabu
Waktu().LLL()                   Mar
Waktu().LLLL()                  Maret
Waktu().MMM()                   Mar
Waktu().MMMd()                  26 Mar
Waktu().MMMEd()                 Rab, 26 Mar
Waktu().MMMM()                  Maret
Waktu().MMMMd()                 26 Maret
Waktu().MMMMEEEEd()             Rabu, 26 Maret
Waktu().QQQQ()                  Kuartal pertama
Waktu().yMd()                   26/3/2025
Waktu().yMEd()                  Rab, 26/3/2025
Waktu().yMMM()                  Mar 2025
Waktu().yMMMd()                 26 Mar 2025
Waktu().yMMMEd()                Rab, 26 Mar 2025
Waktu().yMMMM()                 Maret 2025
Waktu().yMMMMd()                26 Maret 2025
Waktu().yMMMMEEEEd()            Rabu, 26 Maret 2025
```

## Pattern formatter

```dart
import 'package:format_indonesia_v2/format_indonesia_v2.dart';

void main() {
  // using current time
  var waktu = Waktu();
  print(waktu.format('dd MMM yyyy')); // 26 Mar 2025 (this was the current time when development)

  // using specific time
  DateTime datetime = DateTime.parse('2025-05-26 00:01:15');
  print(Waktu(datetime).format('EEEE, d MMMM y')); // Rabu, 26 Maret 2025
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
  print("Saya cinta ${Emoji().indoEmoji}"); // Saya cinta 🇮🇩
}
```

# Thank you

It is really helpful if there are ideas, suggestions, or input for next improvement.
