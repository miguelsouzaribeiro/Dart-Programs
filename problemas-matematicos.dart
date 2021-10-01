import 'dart:io';
import 'dart:math';

pitagoras_catetos() {
  print("digite o valor de Cateto A:");
  String valorDeEntradaA = stdin.readLineSync() ?? "";
  int valorA = int.parse(valorDeEntradaA);
  print("Digite o valor de Cateto B: ");
  String valorDeEntradaB = stdin.readLineSync() ?? "";
  int valorB = int.parse(valorDeEntradaB);
  var valor_B_Quadrado = valorB * valorB;
  var valor_A_Quadrado = valorA * valorA;
  var soma_de_AB = valor_A_Quadrado + valor_B_Quadrado;
  var resultado_pitagoras = sqrt(soma_de_AB);
  print("o valor da Hipotenusa é: ${resultado_pitagoras}");
}

pitagoras_cateto_oculto() {
  print("Digite o valor da hipotenusa ");
  String hipotenusa_entrada = stdin.readLineSync() ?? "";
  int hipotenusa = int.parse(hipotenusa_entrada);
  print("Digite o valor do cateto conhecido: ");
  String cateto_conhecido = stdin.readLineSync() ?? "";
  int cateto = int.parse(cateto_conhecido);
  var hipotenusa_quadrado = hipotenusa * hipotenusa;
  var cateto_conhecido_quadrado = cateto * cateto;
  var cateto_desconhecido_quadrado =
      hipotenusa_quadrado - cateto_conhecido_quadrado;
  var resultado_cateto_desconhecido = sqrt(cateto_desconhecido_quadrado);
  print("O valor do cateto desconhecido é: ${resultado_cateto_desconhecido}");
}

teorema_tales() {
  print("Digite o valor conhecido do primeiro seguimento:");
  String seguimento_1_conhecido = stdin.readLineSync() ?? "";
  int seguimento_1 = int.parse(seguimento_1_conhecido);
  print("Digite o primeiro valor do segundo seguimento:");
  String seguimento_2_Primeiro_ponto = stdin.readLineSync() ?? "";
  int seguimento_2_A = int.parse(seguimento_2_Primeiro_ponto);
  print("Digite o primeiro valor do segundo seguimento:");
  String seguimento_2_Segundo_ponto = stdin.readLineSync() ?? "";
  int seguimento_2_B = int.parse(seguimento_2_Segundo_ponto);
  var multiplicacao_seguimentos_1_e_2 = seguimento_1 * seguimento_2_B;
  var incognita = multiplicacao_seguimentos_1_e_2 / seguimento_2_A;
  print("O valor de x no seguimento 1 é ${incognita}");
}

determine_tipo_problema() {
  var esta_rodando = true;
  while (esta_rodando) {
    print("Digite o numero referente ao tipo de problema:");
    print("1-≻ Teorema de Pitágoras, descobrir o valor da hipotenusa");
    print("2-≻ Teorema de Pitágoras, descobrir o valor do cateto oculto ");
    print("3-≻ Teorema de Tales");
    print("0-≻ Sair");

    String numero_tipo_problema = stdin.readLineSync() ?? "";
    int tipo_problema = int.parse(numero_tipo_problema);
   if (tipo_problema == 0) {
     esta_rodando = false;
   }
    if (tipo_problema == 1) {
      pitagoras_catetos();
    }
    if (tipo_problema == 2) {
      pitagoras_cateto_oculto();
    }
    if (tipo_problema == 3) {
      teorema_tales();
    }
    print("Obrigado por usar, deseja continuar? Se sim aperte Enter, caso não queira aperte 0 ");
  }
}

main() {
  determine_tipo_problema();
}
