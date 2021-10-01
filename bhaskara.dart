import 'dart:io';
import 'dart:math';

main() {
  // se o determinante for negativo não existe raiz real

  /*
  import 'dart:io';

  double lerDouble( String prompt ) {
  print(prompt + ":");
  return double.parse( stdin.readLineSync() ?? '0' );
}

void main(){
  print( 'Resolvendo ax² + bx + c = 0' );
  double a = lerDouble( 'Entre com o valor de a' );
  double b = lerDouble( 'Entre com o valor de b' );
  double c = lerDouble( 'Entre com o valor de c' );

  print(a);
  print(b);
  print(c);
}*/

  // se o determinante for maior que zero existem duas raizes reais e diferentes

  // se o determinante for igual a zero existem duas raizes iguais

  // concavidade é dada pelo sinal do A

  // cordenada do vertice

  // o vertice é um ponto de maxima ou de minima

  print("Digite o valor A: ");
  String valorDeEntradaA = stdin.readLineSync() ?? "";
  int valorA = int.parse(valorDeEntradaA);
  print("Digite o valor B: ");
  String valorDeEntradaB = stdin.readLineSync() ?? "";
  int valorB = int.parse(valorDeEntradaB);
  print("Digite o valor C: ");
  String valorDeEntradaC = stdin.readLineSync() ?? "";
  int valorC = int.parse(valorDeEntradaC);

  var valorBQuadrado = -valorB * -valorB;
  var multiplicacaoDentroRaiz = 4 * valorA * valorC;
  var subtracaoDentroRaiz = valorBQuadrado - multiplicacaoDentroRaiz;
  var raizQuadrada = sqrt(subtracaoDentroRaiz);
  var somaPositiva = -valorB + raizQuadrada;
  var somaNegativa = -valorB - raizQuadrada;
  var resultado1 = somaPositiva / (2 * valorA);
  var resultado2 = somaNegativa / (2 * valorA);

  print("${resultado1} ou ${resultado2}");
}
