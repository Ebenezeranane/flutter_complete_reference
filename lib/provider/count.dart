import 'package:flutter/foundation.dart';

class Count extends ChangeNotifier {
  Count();
  int _count = 0;

  //increment of value
  void increment() {
    _count++;
    notifyListeners();
  }

  int get currentCount=>_count;
}
