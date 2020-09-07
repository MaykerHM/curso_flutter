import '../model/venda.dart';
import '../model/produto.dart';
import '../model/cliente.dart';
import '../model/venda_item.dart';

main() {
  Venda venda = Venda(
    cliente: Cliente(
      nome: 'João',
      cpf: '123.456.789-45',
    ),
    itens: <VendaItem>[
      VendaItem(
        quantidade: 2,
        produto: Produto(
          codigo: 1,
          nome: 'borracha',
          preco: 1.20,
          desconto: 0.1,
        ),
      ),
      VendaItem(
        quantidade: 5,
        produto: Produto(
          codigo: 2,
          nome: 'lápis',
          preco: 1.80,
          desconto: 0.15,
        ),
      ),
      VendaItem(
        quantidade: 3,
        produto: Produto(
          codigo: 3,
          nome: 'caneta',
          preco: 2.50,
          desconto: 0.2,
        ),
      ),
    ],
  );

  print('O valo total da venda é: ${venda.valorTotal}.');
  print('Nome do primeiro produto é: ${venda.itens[0].produto.nome}');
  print('O CPF do cliente é: ${venda.cliente.cpf}');
}
