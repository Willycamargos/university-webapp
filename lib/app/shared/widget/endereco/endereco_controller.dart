import 'package:flutter/material.dart';
import 'package:university_webapp/core/domain/model/endereco.dart';

class EnderecoController {
  final TextEditingController logradouro = TextEditingController();
  final TextEditingController numero = TextEditingController();
  final TextEditingController cidade = TextEditingController();
  final TextEditingController estado = TextEditingController();


  EnderecoController() {
    logradouro.text = 'Avenida Afonso Pensa';
    numero.text = '1578';
    cidade.text = 'Belo Horizonte';
    estado.text = 'Minas Gerais';
  }

  Endereco enderecoBuild() {
    return new Endereco(
      logradouro.text.toString(),
      numero.text.toString(),
      cidade.text.toString(),
      estado.text.toString(),
    );
  }
}
