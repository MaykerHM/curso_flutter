class Data {
  int dia;
  int mes;
  int ano;

  // Data(int dia, int mes, int ano) {
  //   this.dia = dia;
  //   this.mes = mes;
  //   this.ano = ano;
  // }

  Data([this.dia = 1, this.mes = 1, this.ano = 1970]);
  Data.com({this.dia = 1, this.mes = 1, this.ano = 1970});
  Data.ultimoDiadoAno(this.ano) {
    dia = 31;
    mes = 12;
  }

  String obterDataFormatada() {
    return '$dia/$mes/$ano';
  }

  String toString() {
    return obterDataFormatada();
  }
}

main() {
  var dataAniversario = new Data(3, 10, 2020);

  Data dataCompra = Data(1, 1, 1970);
  dataCompra.dia = 23;
  dataCompra.mes = 12;
  dataCompra.ano = 2021;

  String d1 = dataAniversario.obterDataFormatada();

  print('A data do aniversário é $d1');
  print('A data da compra é ${dataCompra.obterDataFormatada()}');

  print(dataCompra);
  print(dataCompra.toString());

  print(new Data());
  print(Data(31));
  print(Data(31, 12));
  print(Data(31, 12, 2021));

  print(Data.com(ano: 2022));

  var dataFinal = Data.com(dia: 12, mes: 7, ano: 2024);
  print('O Mickey será público em $dataFinal');

  print(Data.ultimoDiadoAno(2023));
}
