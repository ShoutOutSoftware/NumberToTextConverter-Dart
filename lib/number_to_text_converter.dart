library number_to_text_converter;

import 'number_mappings.dart';
import 'number_splitter.dart';

class NumberToTextConverter {
  final NumberSplitter _numberSplitter;

  NumberToTextConverter.forIndianNumberingSystem()
      : this._numberSplitter = IndianNumberingSystemNumberSplitter();

  NumberToTextConverter.forInternationalNumberingSystem()
      : this._numberSplitter = InternationalNumberingSystemNumberSplitter();

  String convert(int number) {
    return getTextForNumber(number);
  }

  String getTextForNumber(int number) {
    var segments = _numberSplitter.splitNumber(number);
    var text = '';

    for (int i = 0; i < segments.length; i++) {
      var part = segments[i];
      var partString = getTextForNumberLessThan1000(part.number);
      var shouldAddSpace = text.isNotEmpty && partString.isNotEmpty;

      if (shouldAddSpace) text += ' ';
      text += partString + part.magnitude;
    }

    return text;
  }

  //MARK: Functions to get text for numbers less that 1000

  String getTextForNumberLessThan1000(int number) {
    if (number > 999) return '';

    var lastTwoDigits = (number % 100).toInt();
    var lastTwoDigitsText = getTextForNumberLessThan100(lastTwoDigits);

    var digitAtHundredsPlace = number ~/ 100;
    var hundredsPlaceText = getMappingForNumber(digitAtHundredsPlace);
    if (hundredsPlaceText.isNotEmpty) hundredsPlaceText += ' hundred';
    if (hundredsPlaceText.isNotEmpty && lastTwoDigitsText.isNotEmpty)
      hundredsPlaceText += ' and ';

    return hundredsPlaceText + lastTwoDigitsText;
  }

  String getTextForNumberLessThan100(int number) {
    if (number > 99) return '';
    if (getMappingForNumber(number).isNotEmpty)
      return getMappingForNumber(number);

    var onesPlace = (number % 10).toInt();
    var onesPlaceText = getMappingForNumber(onesPlace);

    var tensPlace = ((number - onesPlace) % 100).toInt();
    var tensPlaceText = getMappingForNumber(tensPlace);
    if (onesPlaceText.isNotEmpty) tensPlaceText += ' ';

    return tensPlaceText + onesPlaceText;
  }

  String getMappingForNumber(int number) {
    if (number == 0 || !NumberMappings.mappings.containsKey(number)) return '';

    return NumberMappings.mappings[number]!;
  }
}
