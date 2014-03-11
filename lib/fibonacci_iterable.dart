library fibonacci_iterable;

import 'dart:collection';

import 'package:fibonacci_iterator/fibonacci_iterator.dart';

class FibonacciIterable extends Object with IterableMixin<int> {
  final int _count;

  FibonacciIterable(this._count);

  Iterator<int> get iterator => new FibonacciIterator(_count);
  int get length => _count;
}