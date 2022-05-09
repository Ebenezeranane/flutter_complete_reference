import 'package:flutter_test/flutter_test.dart';

void main() {
  test("This is an async test", () async{
    final age =await Future<int>.value(35);

    expect(age, equals(35));
  });
}
