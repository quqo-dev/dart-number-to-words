import 'package:numbers_to_words/number_to_thai_words.dart';
import 'package:numbers_to_words/numbers_to_words.dart';

void main() {
  NumberToWords.convert(3, "da");
  // سه

  NumberToWords.convert(3, "en");
  // three

  print(NumberToThaiWords.getText(12345.5463));
}
