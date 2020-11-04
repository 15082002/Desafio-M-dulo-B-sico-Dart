void main() {
  //Exercícios

  //Exercício 1:
  print('======== Exercicio 1 ========');

  //Crie uma variável com o nome Pedro de Alcântara Francisco Antônio
  //João Carlos Xavier de Paula Miguel Rafael Joaquim José Gonzaga
  //Pascoal Cipriano Serafim de Bragança e Bourbon

  String nome =
      'PedrodeAlcantaraFranciscoAntônioJoãoCarlosXavierdePaulaMiguelRafaelJoaquimJoseGonzagaPascoalCiprianoSerafimdeBragancaeBourbon';
  print(nome.length);

  print('');
  print('======== Exercicio 2 ========');
  //Exercício 2:
  //Construa uma lista com 10 nomes.
  //Imprima na tela cada nome com a frase: Sejá bem vindo NOME

  List<String> nomes = [
    'caio',
    'nathaly',
    'jean',
    'rafael',
    'romeu',
    'panda',
    'jhonny',
    'michelli',
    'micael',
    'marcos',
  ];

  for (var nome in nomes) {
    var dados = nome.split('|');
    print('Seja bem-vindo ${dados[0]}');
  }

  print('');
  print('======== Exercicio 3 ========');
  //Exercício 3:

  //Crie uma variável com o nome Pedro de Alcântara Francisco Antônio
  //João Carlos Xavier de Paula Miguel Rafael Joaquim José Gonzaga Pascoal Cipriano Serafim de Bragança e Bourbon
  //Imprima a quantidade de nomes que essa variavel tem.

  String nome2 =
      'João Carlos Xavier de Paula Miguel Rafael Joaquim José Gonzaga Pascoal Cipriano Serafim de Bragança e Bourbon';

  var nomes2 = nome2.split(' ');

  print(nomes2.length);

  print('');
  //Exercício 4:
  print('======== Exercicio 4 ========');
  List<String> paciente2 = [
    'Rodrigo Rahman|35',
    'Guilheme Rahman|10',
    'João Rahman|20',
    'Joaquin Rahman|25',
    'Luan Rahman|23'
  ];
  //Dado a lista acima faça:
  //Imprima a lista acima na tela com o nome e a idade de cada paciente ex:

  for (var paciente in paciente2) {
    var dados = paciente.split('|');
    print('${dados[0]} tem ${dados[1]} anos');
  }

  print('');
  //Exercício 5:
  print('======== Exercicio 5 ========');
  List<String> paciente3 = [
    'Rodrigo Rahman|35',
    'Guilheme Rahman|10',
    'João Rahman|20',
    'Joaquin Rahman|25',
    'Luan Rahman|23',
  ];
  //Dado a lista acima faça:

  //Remova os 2 ultimo paciente da lista
  //Imprima a lista acima na tela com o nome e a idade de cada paciente ex:

  paciente3.removeWhere((element) => element.contains('Joaquin Rahman|25'));
  paciente3.removeWhere((element) => element.contains('Luan Rahman|23'));

  for (var paciente in paciente3) {
    var dados = paciente.split('|');
    print('${dados[0]} tem ${dados[1]} anos');
  }

  print('');
  //Exercício 6:
  print('======== Exercicio 6 ========');
  List paciente = [
    'Rodrigo Rahman|35',
    'Guilheme Rahman|10',
    'João Rahman|17',
    'Joaquin Rahman|28',
    'Luan Rahman|23',
  ];

  // /Dado a lista acima faça:

  //Remova da lista os pacientes que são menor de idade.
  //Imprima a lista acima na tela com o nome e a idade de cada paciente ex:

  for (var pacientes in paciente) {
    var dados = pacientes.split('|');
    var idade = int.parse(dados[1]);

    if (idade < 18) {
      print('Idade menor de 18 anos? ${idade}, removido');
    } else {
      print('${dados[0]} tem ${dados[1]} anos');
    }
  }

  print('');
  //Desafio Modulo Básico
  print('======== Desafio ========');

  var pacientes5 = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|estudante|MG',
    'Sandra Silva|40|estudante|MG',
    'Regina Verne|35|estudante|MG',
    'João Rahman|55|Jornalista|SP',
  ];

  // Baseado no array acima monte um relatório onde mostre
  // Apresente a quantidade de pacientes com mais de 20 anos

  for (var paciente in pacientes5) {
    var dados = paciente.split('|');
    var idade = int.parse(dados[1]);

    if (idade > 20) {
      print(dados[1]);
    }
  }
  // Agrupar os pacientes por familia(considerar o sobrenome) apresentar por familia.

  List<String> familias = [];

  for (var paciente in pacientes5) {
    var dados = paciente.split('|');
    var nomeCompleto = dados[0];

    var nomeQuebrado = nomeCompleto.split(' ');

    if (!familias.contains(nomeQuebrado.last)) {
      familias.add(nomeQuebrado.last);
    }
  }

  for (var familia in familias) {
    print('');
    print(familia);

    for (var paciente in pacientes5) {
      if (paciente.contains(familia)) {
        print(paciente);
      }
    }
  }
}
