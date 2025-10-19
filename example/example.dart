import 'package:number_to_text_converter/number_to_text_converter.dart';

class NumberToTextConverterExample {
  void convertNumbersWithInternationalNumberingSystem() {
    var converter = NumberToTextConverter.forInternationalNumberingSystem();

    print(converter.getTextForNumber(1)); //prints 'one'
    print(converter.getTextForNumber(100)); //prints 'hundred'
    print(converter.getTextForNumber(10000)); //prints 'ten thousand'
    print(converter.getTextForNumber(100000)); //prints 'one hundred thousand'
    print(converter.getTextForNumber(1000000)); //prints 'one million'
    print(converter.getTextForNumber(10000000)); //prints 'ten million'
    print(converter.getTextForNumber(100000000)); //prints 'hundred million'
    print(converter.getTextForNumber(1000000000)); //prints 'one billion'
    print(converter.getTextForNumber(10000000000)); //prints 'ten billion'
  }

  void convertNumbersWithIndianNumberingSystem() {
    var converter = NumberToTextConverter.forIndianNumberingSystem();

    print(converter.getTextForNumber(1)); //prints 'one'
    print(converter.getTextForNumber(100)); //prints 'hundred'
    print(converter.getTextForNumber(10000)); //prints 'ten thousand'
    print(converter.getTextForNumber(100000)); //prints 'one lakh'
    print(converter.getTextForNumber(1000000)); //prints 'ten lakh'
    print(converter.getTextForNumber(10000000)); //prints 'one crore'
    print(converter.getTextForNumber(100000000)); //prints 'ten crore'
    print(converter.getTextForNumber(1000000000)); //prints 'hundred crore'
    print(converter.getTextForNumber(10000000000)); //prints 'one thousand crore'
  }
}
