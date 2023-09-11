import 'dart:io';
import 'package:calculadoraimc/ImcUtils/imcUtils.dart';
import 'package:calculadoraimc/pessoa.dart';

execute() {

  print("Bem vindo a calculadora de IMC.");

  Pessoa pessoa = Pessoa();
  
  var nome = inputText("Digite seu nome:");
  try {
    if (nome.trim() == "") {
     throw Exception("O nome não pode ser nulo");
  } else {
    pessoa.setNome(nome);
  }
  } catch (e) {
    print("Digite um nome válido não nulo.");
    exit(0);
  }
  

  try {
    var peso = double.parse(inputText("Digite seu peso:"));
    pessoa.setPeso(peso);
  } catch (e) {
    print("Digite um peso válido, diferente de texto ou nulo.");
    exit(0);
  }

  try {
    var altura = double.parse(inputText("Digite sua altura:"));
    pessoa.setAltura(altura);
  } catch (e) {
    print("Digite uma altura válida, diferente de texto ou nula.");
    exit(0);
  }

  var imc = calculoImc(pessoa.getPeso(), pessoa.getAltura());
  var imcFormatado = double.parse(imc.toStringAsFixed(2));

  resultadoImc(imcFormatado, pessoa.getNome());
}