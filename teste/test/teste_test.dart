import 'package:teste/teste.dart';
import 'package:test/test.dart';

void main() {
  test('calculate', () {
    expect(calculate(), 42);
  });
  test('soma', () {
    expect(soma(2,2), 4);
    expect(soma(-1,2), 1);
    expect(soma(1111,9), 1120);
    expect(soma(9999,1),10000);
    expect(soma(3.14,3.14), 6.28);
    expect(soma(2,1), 3);
  });
}
