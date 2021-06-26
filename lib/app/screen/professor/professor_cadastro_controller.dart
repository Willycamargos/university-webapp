import 'package:flutter/material.dart';
import 'package:university_webapp/app/shared/widget/endereco/endereco_controller.dart';
import 'package:university_webapp/core/domain/client/professor_client.dart';
import 'package:university_webapp/core/domain/model/professor.dart';

class ProfessorCadastroController {
  final EnderecoController enderecoController = EnderecoController();
  final TextEditingController nome = TextEditingController();
  final TextEditingController numeroMatricula = TextEditingController();

  ProfessorCadastroController() {
    nome.text = 'Roberto Morais';
    numeroMatricula.text = '5465464';
  }

  void salvarProfessor() {
    var endereco = enderecoController.enderecoBuild();
    var professor = Professor(nome.text.toString(),
        int.parse(numeroMatricula.text.toString()), endereco);

    ProfessorClient.client
        .salvarProfessor(professor)
        .then((value) => print(value))
        .catchError((onError) => print(onError));
  }
}
