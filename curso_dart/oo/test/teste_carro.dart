import '../model/carro.dart';

main() {
  var mustang = Carro(203);

  while (!mustang.estaNoLimite()) {
    print('A velocidade atual é ${mustang.acelerar()} Km/h.');
  }

  print(
      'O carro chegou no máximo com velocidade ${mustang.velocidadeAtual} Km/h.');

  while (!mustang.estaParado()) {
    print('A velocidade atual é ${mustang.frear()} Km/h.');
  }

  print('O carro parou com velocidade ${mustang.velocidadeAtual} Km/h.');
}
