import 'dart:io';

/* Função que recebe um número e retorna o somatório de todos os inteiros positivos 
divisíveis por 3 ou 5 que sejam inferiores ao número passado de entrada */
int func_sum(int num) {
  var summation = 0;
  for (int i = 1; i < num; i++) {
    if ((i % 3 == 0) || (i % 5 == 0)) {
      summation += i;
    }
  }
  return summation;
}

void main(List<String> args) {
  //Texto para a entrada do usuário
  stdout.write("Olá, digite um número inteiro positivo: ");
  var input_text = stdin.readLineSync();

  //Verificação de possível entrada null
  var number;
  if (input_text != null) {
    number = int.tryParse(input_text);
  }

  //Texto de saída com resultado ou informando erro de entrada
  if (number == null) {
    stdout.write("Não foi informado um número, tente novamente");
  } else if (number < 1) {
    stdout.write("Número abaixo de 1, logo não é um número positivo");
  } else {
    stdout.write("O somatório é: ");
    //uso da função de somatório
    print(func_sum(number));
  }
}
