import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test_app/model/arithmetic.dart';

void main() {
  test('this is my first test', () {
    int expectedValue = 1;
    int actualValue = 1;
    expect(actualValue, expectedValue);
  });

  test('add two numbers', () {
    Arithmetic arithmetic = Arithmetic();
    int expectedValue = 3;
    int actualValue = arithmetic.add(1, 2);
    expect(actualValue, expectedValue);
  });
}
