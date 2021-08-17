abstract class NumberSplitter {
  List<NumberSegment> splitNumber(int number);
}

class NumberSegment {
  final int number;
  final String magnitude;

  NumberSegment(this.number, this.magnitude);
}

/*
 Splits the number based on the Indian Numbering System (thousand, lakh, crores)
 */
class IndianNumberingSystemNumberSplitter extends NumberSplitter {
  @override
  List<NumberSegment> splitNumber(int number) {
    var separatedNumbersList = number.toString().split("");
    List<NumberSegment> segments = [];
    var numberString = '';

    for (int i = separatedNumbersList.length - 1; i >= 0; i--) {
      numberString = separatedNumbersList[i] + numberString;

      if (_canAddNumberAsSegment(numberString,
          noOfExistingSegments: segments.length, indexOfNumber: i)) {
        var segment = _getSegmentForNumber(numberString,
            noOfExistingSegments: segments.length);
        segments.insert(0, segment);
        numberString = '';
      }
    }

    return segments.toList();
  }

  bool _canAddNumberAsSegment(String numberString,
      {int noOfExistingSegments = 0, int indexOfNumber = 0}) {
    return indexOfNumber == 0 || //last number
        (noOfExistingSegments % 3 == 0 &&
            numberString.length == 3) || //for hundreds
        (noOfExistingSegments % 3 != 0 &&
            numberString.length == 2); //for thousands, lakhs, and crores
  }

  NumberSegment _getSegmentForNumber(String numberString,
      {required int noOfExistingSegments}) {
    var number = int.parse(numberString);
    var magnitude = _getOrderOfMagnitudeOfSegment(number,
        indexOfSegment: noOfExistingSegments);
    return NumberSegment(number, magnitude);
  }

  String _getOrderOfMagnitudeOfSegment(int segment,
      {required int indexOfSegment}) {
    var magnitude = '';

    if (segment != 0 && indexOfSegment % 3 == 1) magnitude = ' thousand';

    if (segment != 0 && indexOfSegment % 3 == 2) magnitude = ' lakh';

    if (indexOfSegment > 0 && indexOfSegment % 3 == 0) magnitude = ' crore';

    return magnitude;
  }
}

/*
 Splits the number based on the International Numbering System (million, billion...)
 */
class InternationalNumberingSystemNumberSplitter extends NumberSplitter {
  @override
  List<NumberSegment> splitNumber(int number) {
    var separatedNumbersList = number.toString().split("");
    List<NumberSegment> segments = [];
    var numberString = '';

    for (int i = separatedNumbersList.length - 1; i >= 0; i--) {
      numberString = separatedNumbersList[i] + numberString;

      if (numberString.length == 3 || i == 0) {
        var segment = _getSegmentForNumber(numberString,
            noOfExistingSegments: segments.length);
        segments.insert(0, segment);
        numberString = '';
      }
    }

    return segments.toList();
  }

  NumberSegment _getSegmentForNumber(String numberString,
      {required int noOfExistingSegments}) {
    var number = int.parse(numberString);
    var magnitude = _getOrderOfMagnitudeOfSegment(number,
        indexOfSegment: noOfExistingSegments);
    return NumberSegment(number, magnitude);
  }

  String _getOrderOfMagnitudeOfSegment(int segment,
      {required int indexOfSegment}) {
    var magnitude = '';

    if (segment != 0 && indexOfSegment % 6 == 1) magnitude = ' thousand';

    if (segment != 0 && indexOfSegment % 6 == 2) magnitude = ' million';
    if (segment != 0 && indexOfSegment % 6 == 3) magnitude = ' billion';
    if (segment != 0 && indexOfSegment % 6 == 4) magnitude = ' trillion';
    if (segment != 0 && indexOfSegment % 6 == 5) magnitude = ' quadrillion';

    if (indexOfSegment > 0 && indexOfSegment % 6 == 0)
      magnitude = ' quintrillion';

    return magnitude;
  }
}
