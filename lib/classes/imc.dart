import 'dart:math';

class imc {
  double _altura = 0;
  int _peso = 0;

  imc(this._altura, this._peso);

  int calcularImc() {
    double imc = _peso / (pow(_altura, 2));
    int imcInteiro = int.parse(imc.round().toString());
    return imcInteiro;
  }
}
