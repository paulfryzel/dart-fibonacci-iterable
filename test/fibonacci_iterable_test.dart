library fibonacci_iterable;

import 'package:unittest/unittest.dart';

import 'package:fibonacci_iterable/fibonacci_iterable.dart';

void main() {
  group('Fibonacci Iterable', () {
    List<int> check = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144];
    Iterable<int> fibonacci = new FibonacciIterable(check.length - 1);

    test('matches the expected iteration of Fibonacci numbers', () {
      for (var i = 0; i < check.length; i++) {
        expect(check[i], fibonacci.elementAt(i));
      }
    });
  });
}