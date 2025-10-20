import 'dart:io';

void main() {
  double numeroUm = 0;
  double numeroDois = 0;
  String operacoes = "";

  void soma() {
    print(numeroUm + numeroDois);
  }

  void substracao() {
    print(numeroUm - numeroDois);
  }

  void divisao() {
    print(numeroUm / numeroDois);
  }

  void multiplicacao() {
    print(numeroUm * numeroDois);
  }

  void calcular() {
    switch (operacoes) {
      case "+":
        soma();

      case "-":
        substracao();

      case "*":
        multiplicacao();

      case "/":
        divisao();
        break;
    }
  }

  print("Digite o primeiro valor");
  String? entrada = stdin.readLineSync();
  if (entrada != null) {
    if (entrada != "") {
      numeroUm = double.parse(entrada);
    }
  }

  print("Digite a operação");
  entrada = stdin.readLineSync();
  if (entrada != null) {
    operacoes = entrada;
  }

  print("Digite o segundo valor");
  entrada = stdin.readLineSync();
  if (entrada != null) {
    if (entrada != "") {
      numeroDois = double.parse(entrada);
    }
  }

print("O resultado da operação é: ");
  calcular();
}
