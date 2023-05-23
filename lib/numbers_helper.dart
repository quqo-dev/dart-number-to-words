import 'package:numbers_to_words/locales/th.dart';

import 'locales/da.dart';
import 'locales/en.dart';

/// Returns an array of strings from one-nineteen
getNumsNames(String locale) {
  switch (locale) {
    case "da":
      return dariNumNames;
    case "en":
      return numNames;
    case "th":
      return thaiNumNames;
    default:
      return numNames;
  }
}

/// Returns an array of strings from one-nineteen
getTensNames(String locale) {
  switch (locale) {
    case "da":
      return dariTensNames;
    case "en":
      return tensNames;
    case "th":
      return thaiTensNames;
    default:
      return tensNames;
  }
}

/// Returns zero based on locale
getZero(String locale) {
  switch (locale) {
    case "da":
      return dariZero;
    case "en":
      return zero;
    case "th":
      return thaiZero;
    default:
      return zero;
  }
}

/// Returns hundred based on locale
getHundred(String locale) {
  switch (locale) {
    case "da":
      return dariHundred;
    case "en":
      return hundred;
    case "th":
      return thaiHundred;
    default:
      return hundred;
  }
}

/// Returns thousand based on locale
getThousand(String locale) {
  switch (locale) {
    case "da":
      return dariThousand;
    case "en":
      return thousand;
    case "th":
      return thaiThousand;
    default:
      return thousand;
  }
}

/// Returns million based on locale
getMillion(String locale) {
  switch (locale) {
    case "da":
      return dariMillion;
    case "en":
      return million;
    case "th":
      return thaiMillion;
    default:
      return million;
  }
}

/// Returns billion based on locale
getBillion(String locale) {
  switch (locale) {
    case "da":
      return dariBillion;
    case "en":
      return billion;
    case "th":
      return thaiBillion;
    default:
      return billion;
  }
}
