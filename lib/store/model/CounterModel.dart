import 'package:flutter/foundation.dart' show ChangeNotifier;
import '../object/Counter.dart';
export '../object/Counter.dart';

class CounterModel extends Counter with ChangeNotifier {

  Counter _counter = Counter(count: 5);

  int get count => _counter.count;

  void increment() {
    _counter.count++;
    notifyListeners();
  }
  void decrement() {
    _counter.count--;
    notifyListeners();
  }
}