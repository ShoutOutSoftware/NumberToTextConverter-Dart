# number_to_text_converter

A library to convert a number to text

## To convert as per International Numbering System
```
var converter = NumberToTextConverter.forInternationalNumberingSystem();

print(converter.convert(1)); //prints 'one'
print(converter.convert(100)); //prints 'hundred'
print(converter.convert(10000)); //prints 'ten thousand'
print(converter.convert(100000)); //prints 'one hundred thousand'
print(converter.convert(1000000)); //prints 'one million'
print(converter.convert(10000000)); //prints 'ten million'
print(converter.convert(100000000)); //prints 'hundred million'
print(converter.convert(1000000000)); //prints 'one billion'
print(converter.convert(10000000000)); //prints 'ten billion'
```

## To convert as per Indian Numbering System
```
var converter = NumberToTextConverter.forIndianNumberingSystem();

print(converter.convert(1)); //prints 'one'
print(converter.convert(100)); //prints 'hundred'
print(converter.convert(10000)); //prints 'ten thousand'
print(converter.convert(100000)); //prints 'one lakh'
print(converter.convert(1000000)); //prints 'ten lakh'
print(converter.convert(10000000)); //prints 'one crore'
print(converter.convert(100000000)); //prints 'ten crore'
print(converter.convert(1000000000)); //prints 'hundred crore'
print(converter.convert(10000000000)); //prints 'one thousand crore'
```