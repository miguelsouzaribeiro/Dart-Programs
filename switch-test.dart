double soma (double a, double b);
  return soma = a+b;

main() {
  test('soma de numeros inteiros', () {
  expect(soma(2,3), equals(5));
  });
}