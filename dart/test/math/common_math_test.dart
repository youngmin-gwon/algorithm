import 'package:algorithms/math/common_math.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test(
    "GCD test",
    () async {
      expect(gcd(15, 20), equals(5));
      expect(gcd(5, 7), equals(1));
      expect(gcd(4, 6), equals(2));
      expect(gcd(0, 6), equals(6));
      expect(gcd(4, 0), equals(4));
      expect(gcd(0, 0), equals(0));
    },
  );

  test(
    "GCD List test",
    () async {
      expect(() => gcdList([5]), throwsA(isA<ArgumentError>()));
      expect(gcdList([5, 7]), equals(1));
      expect(gcdList([4, 6]), equals(2));
      expect(gcdList([4, 6, 0]), equals(2));
      expect(gcdList([15, 20, 25, 30, 35]), equals(5));
      expect(gcdList([0, 6, 9, 0, 12]), equals(3));
      expect(gcdList([0, 0, 0, 0, 0]), equals(0));
    },
  );

  test(
    "LCM",
    () async {
      expect(lcm(15, 20), equals(60));
      expect(lcm(5, 7), equals(35));
      expect(() => lcm(4, 0), throwsA(isA<ArgumentError>()));
    },
  );

  test(
    "LCM List test",
    () async {
      expect(() => lcmList([5]), throwsA(isA<ArgumentError>()));
      expect(lcmList([5, 7]), equals(35));
      expect(lcmList([4, 6]), equals(12));
    },
  );

  test('Factorial', () {
    expect(factorial(0), equals(1));
    expect(factorial(1), equals(1));
    expect(factorial(2), equals(2));
    expect(factorial(3), equals(6));
    expect(factorial(4), equals(24));
    expect(factorial(5), equals(120));
    expect(() => factorial(-2), throwsA(isA<ArgumentError>()));
  });
}
