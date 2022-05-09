import 'package:flutter_complete_reference/sum.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('The sum of 2 and 3 is 5', () {
    final sum = Sum(2, 3);

    expect(sum.add(), 5);
  });
}
