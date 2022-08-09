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
  var number = 10;
  print(func_sum(number));
}
