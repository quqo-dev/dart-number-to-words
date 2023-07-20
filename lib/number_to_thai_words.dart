class NumberToThaiWords {
  static final List<String> SCALE_TH = [
    "ล้าน",
    "สิบ",
    "ร้อย",
    "พัน",
    "หมื่น",
    "แสน",
    ""
  ];
  static final List<String> DIGIT_TH = [
    "ศูนย์",
    "หนึ่ง",
    "สอง",
    "สาม",
    "สี่",
    "ห้า",
    "หก",
    "เจ็ด",
    "แปด",
    "เก้า"
  ];
  static final List<String> SYMBOLS_TH = [
    "ลบ",
    "บาท",
    "ถ้วน",
    "สตางค์",
    "ยี่",
    "เอ็ด",
    ",",
    " ",
    "฿"
  ];

  static String getText(double amount) {
    return getThaiBaht(amount);
  }

  static String getThaiBaht(double amount) {
    StringBuffer builder = StringBuffer();
    double absolute = amount.abs();
    int precision = absolute.toString().length;
    int scale = absolute.toString().split('.').last.length;
    int rounded_precision = ((precision - scale) + 2);
    double rounded = double.parse((amount).toStringAsFixed(rounded_precision));
    List<double> compound = [rounded.floorToDouble(), rounded % 1];
    bool negative_amount = amount < 0;

    if (negative_amount) {
      builder.write(SYMBOLS_TH[0].toString());
    }

    builder.write(getNumberText(compound[0].toInt()));
    builder.write(SYMBOLS_TH[1].toString());

    if (0 == compound[1].compareTo(0)) {
      builder.write(SYMBOLS_TH[2].toString());
    } else {
      builder.write(getNumberText(
          (double.parse(compound[1].toStringAsFixed(2)) * 100).toInt()));
      builder.write(SYMBOLS_TH[3].toString());
    }
    return builder.toString();
  }

  static String getNumberText(int number) {
    StringBuffer buffer = StringBuffer();
    List<String> digits = number.toString().split('');

    for (int index = digits.length; index > 0; --index) {
      int digit = int.parse(digits[digits.length - index]);
      String digit_text = DIGIT_TH[digit];
      int scale_idx = ((1 < index) ? ((index - 1) % 6) : 6);

      if ((1 == scale_idx) && (2 == digit)) {
        digit_text = SYMBOLS_TH[4].toString();
      }

      if (1 == digit) {
        switch (scale_idx) {
          case 0:
          case 6:
            buffer.write((index < digits.length)
                ? SYMBOLS_TH[5].toString()
                : digit_text);
            break;
          case 1:
            break;
          default:
            buffer.write(digit_text);
            break;
        }
      } else if (0 == digit) {
        if (0 == scale_idx) {
          buffer.write(SCALE_TH[scale_idx]);
        }
        continue;
      } else {
        buffer.write(digit_text);
      }
      buffer.write(SCALE_TH[scale_idx]);
    }
    return buffer.toString();
  }
}
