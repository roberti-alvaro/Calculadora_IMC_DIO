import 'dart:convert';
import 'dart:io';


inputText(String text) {
  print(text);
  var input = stdin.readLineSync(encoding: utf8);
  return input;
}

calculoImc(peso, altura) {
  var imc = peso / (altura*altura);
  return imc;
}

resultadoImc (imc, nome) {
  switch (imc) {
  case < 16 : print("O IMC de $nome foi de $imc onde se enquadra em pessoa com magreza grave");
    break;
  case >= 16 && < 17 : print("O IMC de $nome foi de $imc  onde se enquadra em pessoa com magreza moderada");
    break;
  case >= 17 && < 18.5 : print("O IMC de $nome foi de $imc  onde se enquadra em pessoa com magreza leve");
    break;
  case >= 18.5 && < 25 : print("O IMC de $nome foi de $imc onde se enquadra em pessoa saudável");
    break;
  case >= 25 && < 30 : print("O IMC de $nome foi de $imc  onde se enquadra em pessoa com sobrepeso");
    break;
  case >= 30 && < 35 : print("O IMC de $nome foi de $imc  onde se enquadra em pessoa com obesidade grau I");
    break;
  case >= 35 && < 40 : print("O IMC de $nome foi de $imc  onde se enquadra em pessoa com obesidade grau II");
    break;
  case >= 40 : print("O IMC de $nome foi de $imc  onde se enquadra em pessoa com obesidade grau III");
    break;
  default: print("Não foi possível o cálculo do IMC com os dados digitados.");
  }
  
}