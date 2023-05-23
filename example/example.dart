import 'package:numbers_to_words/numbers_to_words.dart';

void main() {
  NumberToWords.convert(3, "da");
  // سه

  NumberToWords.convert(3, "en");
  // three

  print(NumberToWords.convert(3010045, "th"));
}
