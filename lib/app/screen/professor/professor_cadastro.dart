import 'package:flutter/material.dart';
import 'package:university_webapp/app/screen/professor/professor_cadastro_controller.dart';
import 'package:university_webapp/app/shared/widget/button/custom_text_button.dart';
import 'package:university_webapp/app/shared/widget/button/default_elevated_button.dart';
import 'package:university_webapp/app/shared/widget/endereco/endereco_input.dart';
import 'package:university_webapp/app/shared/widget/input/custom_text_form_field.dart';

class ProfessorCadastro extends StatelessWidget {
  final ProfessorCadastroController _controller = ProfessorCadastroController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Novo Professor'),
      ),
      body: Center(
        child: Container(
          width: 450,
          padding: const EdgeInsets.only(
            top: 16,
            left: 16,
            right: 16,
          ),
          child: ListView(
            children: [
              Center(
                child: Text(
                  'Dados do professor',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              CustomTextFormField(
                label: 'Nome',
                controller: _controller.nome,
              ),
              CustomTextFormField(
                label: 'Número matrícula',
                controller: _controller.numeroMatricula,
              ),
              EnderecoInput(
                controller: _controller.enderecoController,
              ),
              DefaultElevatedButton(
                child: Text('Salvar'),
                backgroundColor: Colors.cyan,
                onTap: _controller.salvarProfessor,
              )
            ],
          ),
        ),
      ),
    );
  }
}
