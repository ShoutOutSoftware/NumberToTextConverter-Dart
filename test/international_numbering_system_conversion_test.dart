import 'package:flutter_test/flutter_test.dart';
import 'package:number_to_text_converter/number_to_text_converter.dart';

void main() {
  var converter = NumberToTextConverter.forInternationalNumberingSystem();

  test('international numbering system number conversion', () {
    expect(converter.convert(0), '');
    expect(converter.convert(1), 'one');
    expect(converter.convert(2), 'two');
    expect(converter.convert(3), 'three');
    expect(converter.convert(4), 'four');
    expect(converter.convert(5), 'five');
    expect(converter.convert(6), 'six');
    expect(converter.convert(7), 'seven');
    expect(converter.convert(8), 'eight');
    expect(converter.convert(9), 'nine');
    expect(converter.convert(10), 'ten');
    expect(converter.convert(11), 'eleven');
    expect(converter.convert(12), 'twelve');
    expect(converter.convert(13), 'thirteen');
    expect(converter.convert(14), 'fourteen');
    expect(converter.convert(15), 'fifteen');
    expect(converter.convert(16), 'sixteen');
    expect(converter.convert(17), 'seventeen');
    expect(converter.convert(18), 'eighteen');
    expect(converter.convert(19), 'nineteen');
    expect(converter.convert(20), 'twenty');
    expect(converter.convert(21), 'twenty one');
    expect(converter.convert(22), 'twenty two');
    expect(converter.convert(23), 'twenty three');
    expect(converter.convert(24), 'twenty four');
    expect(converter.convert(25), 'twenty five');
    expect(converter.convert(26), 'twenty six');
    expect(converter.convert(27), 'twenty seven');
    expect(converter.convert(28), 'twenty eight');
    expect(converter.convert(29), 'twenty nine');
    expect(converter.convert(30), 'thirty');
    expect(converter.convert(33), 'thirty three');
    expect(converter.convert(38), 'thirty eight');
    expect(converter.convert(40), 'forty');
    expect(converter.convert(50), 'fifty');
    expect(converter.convert(60), 'sixty');
    expect(converter.convert(70), 'seventy');
    expect(converter.convert(80), 'eighty');
    expect(converter.convert(90), 'ninety');
    expect(converter.convert(99), 'ninety nine');
    expect(converter.convert(100), 'one hundred');
    expect(converter.convert(101), 'one hundred and one');
    expect(converter.convert(102), 'one hundred and two');
    expect(converter.convert(103), 'one hundred and three');
    expect(converter.convert(104), 'one hundred and four');
    expect(converter.convert(105), 'one hundred and five');
    expect(converter.convert(106), 'one hundred and six');
    expect(converter.convert(107), 'one hundred and seven');
    expect(converter.convert(108), 'one hundred and eight');
    expect(converter.convert(109), 'one hundred and nine');
    expect(converter.convert(110), 'one hundred and ten');
    expect(converter.convert(111), 'one hundred and eleven');
    expect(converter.convert(115), 'one hundred and fifteen');
    expect(converter.convert(119), 'one hundred and nineteen');
    expect(converter.convert(120), 'one hundred and twenty');
    expect(converter.convert(124), 'one hundred and twenty four');
    expect(converter.convert(129), 'one hundred and twenty nine');
    expect(converter.convert(130), 'one hundred and thirty');
    expect(converter.convert(140), 'one hundred and forty');
    expect(converter.convert(150), 'one hundred and fifty');
    expect(converter.convert(160), 'one hundred and sixty');
    expect(converter.convert(170), 'one hundred and seventy');
    expect(converter.convert(180), 'one hundred and eighty');
    expect(converter.convert(190), 'one hundred and ninety');
    expect(converter.convert(199), 'one hundred and ninety nine');
    expect(converter.convert(200), 'two hundred');
    expect(converter.convert(300), 'three hundred');
    expect(converter.convert(400), 'four hundred');
    expect(converter.convert(500), 'five hundred');
    expect(converter.convert(600), 'six hundred');
    expect(converter.convert(700), 'seven hundred');
    expect(converter.convert(800), 'eight hundred');
    expect(converter.convert(900), 'nine hundred');
    expect(converter.convert(1000), 'one thousand');
    expect(converter.convert(1001), 'one thousand one');
    expect(converter.convert(1005), 'one thousand five');
    expect(converter.convert(1010), 'one thousand ten');
    expect(converter.convert(1012), 'one thousand twelve');
    expect(converter.convert(1020), 'one thousand twenty');
    expect(converter.convert(1081), 'one thousand eighty one');
    expect(converter.convert(1099), 'one thousand ninety nine');
    expect(converter.convert(1100), 'one thousand one hundred');
    expect(converter.convert(1101), 'one thousand one hundred and one');
    expect(converter.convert(1110), 'one thousand one hundred and ten');
    expect(converter.convert(1115), 'one thousand one hundred and fifteen');
    expect(converter.convert(1120), 'one thousand one hundred and twenty');
    expect(converter.convert(1124), 'one thousand one hundred and twenty four');
    expect(converter.convert(1150), 'one thousand one hundred and fifty');
    expect(converter.convert(1199), 'one thousand one hundred and ninety nine');
    expect(converter.convert(1200), 'one thousand two hundred');
    expect(converter.convert(1300), 'one thousand three hundred');
    expect(converter.convert(1400), 'one thousand four hundred');
    expect(converter.convert(1500), 'one thousand five hundred');
    expect(converter.convert(1600), 'one thousand six hundred');
    expect(converter.convert(1700), 'one thousand seven hundred');
    expect(converter.convert(1800), 'one thousand eight hundred');
    expect(converter.convert(1900), 'one thousand nine hundred');
    expect(
        converter.convert(1999), 'one thousand nine hundred and ninety nine');
    expect(converter.convert(2000), 'two thousand');
    expect(converter.convert(2562), 'two thousand five hundred and sixty two');
    expect(converter.convert(3000), 'three thousand');
    expect(converter.convert(4000), 'four thousand');
    expect(converter.convert(5000), 'five thousand');
    expect(converter.convert(6000), 'six thousand');
    expect(converter.convert(7000), 'seven thousand');
    expect(converter.convert(8000), 'eight thousand');
    expect(converter.convert(9000), 'nine thousand');
    expect(
        converter.convert(9999), 'nine thousand nine hundred and ninety nine');
    expect(converter.convert(10000), 'ten thousand');
    expect(converter.convert(10001), 'ten thousand one');
    expect(converter.convert(10010), 'ten thousand ten');
    expect(converter.convert(10011), 'ten thousand eleven');
    expect(converter.convert(10083), 'ten thousand eighty three');
    expect(converter.convert(10100), 'ten thousand one hundred');
    expect(converter.convert(10500), 'ten thousand five hundred');
    expect(
        converter.convert(10999), 'ten thousand nine hundred and ninety nine');
    expect(converter.convert(11000), 'eleven thousand');
    expect(converter.convert(11378),
        'eleven thousand three hundred and seventy eight');
    expect(converter.convert(20000), 'twenty thousand');
    expect(converter.convert(68723),
        'sixty eight thousand seven hundred and twenty three');
    expect(converter.convert(99999),
        'ninety nine thousand nine hundred and ninety nine');
    expect(converter.convert(100000), 'one hundred thousand');
    expect(converter.convert(100001), 'one hundred thousand one');
    expect(converter.convert(100010), 'one hundred thousand ten');
    expect(converter.convert(100013), 'one hundred thousand thirteen');
    expect(converter.convert(100024), 'one hundred thousand twenty four');
    expect(converter.convert(100100), 'one hundred thousand one hundred');
    expect(converter.convert(100111),
        'one hundred thousand one hundred and eleven');
    expect(converter.convert(102111),
        'one hundred and two thousand one hundred and eleven');
    expect(converter.convert(111111),
        'one hundred and eleven thousand one hundred and eleven');
    expect(converter.convert(199999),
        'one hundred and ninety nine thousand nine hundred and ninety nine');
    expect(converter.convert(200000), 'two hundred thousand');
    expect(converter.convert(222222),
        'two hundred and twenty two thousand two hundred and twenty two');
    expect(converter.convert(900000), 'nine hundred thousand');
    expect(converter.convert(999999),
        'nine hundred and ninety nine thousand nine hundred and ninety nine');
    expect(converter.convert(1000000), 'one million');
    expect(converter.convert(1000001), 'one million one');
    expect(converter.convert(1252212),
        'one million two hundred and fifty two thousand two hundred and twelve');
    expect(converter.convert(9999999),
        'nine million nine hundred and ninety nine thousand nine hundred and ninety nine');
    expect(converter.convert(10000000), 'ten million');
    expect(converter.convert(10000001), 'ten million one');
    expect(converter.convert(10000119), 'ten million one hundred and nineteen');
    expect(converter.convert(15334564),
        'fifteen million three hundred and thirty four thousand five hundred and sixty four');
    expect(converter.convert(19999999),
        'nineteen million nine hundred and ninety nine thousand nine hundred and ninety nine');
    expect(converter.convert(20000000), 'twenty million');
    expect(converter.convert(100000000), 'one hundred million');
    expect(converter.convert(999999999),
        'nine hundred and ninety nine million nine hundred and ninety nine thousand nine hundred and ninety nine');
    expect(converter.convert(1000000000), 'one billion');
    expect(converter.convert(1000000001), 'one billion one');
    expect(converter.convert(1554488392),
        'one billion five hundred and fifty four million four hundred and eighty eight thousand three hundred and ninety two');
    expect(converter.convert(9999999999),
        'nine billion nine hundred and ninety nine million nine hundred and ninety nine thousand nine hundred and ninety nine');
    expect(converter.convert(10000000000), 'ten billion');
    expect(converter.convert(13000000000), 'thirteen billion');
    expect(
        converter.convert(135000000000), 'one hundred and thirty five billion');
    expect(
        converter.convert(4121421211155596001),
        'four quintrillion '
        'one hundred and twenty one quadrillion '
        'four hundred and twenty one trillion '
        'two hundred and eleven billion '
        'one hundred and fifty five million '
        'five hundred and ninety six thousand '
        'one');
  });
}
