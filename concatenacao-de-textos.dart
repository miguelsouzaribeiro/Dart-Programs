import 'dart:io';

main() {
  print("digite seu nome:");
  var nome = stdin.readLineSync();
  print("digite seu sobrenome:");
  var sobrenome = stdin.readLineSync();
  print("$nome" + " " +"$sobrenome");

} 