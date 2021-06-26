import 'package:flutter/material.dart';
import 'package:university_webapp/app/shared/widget/endereco/endereco_controller.dart';
import 'package:university_webapp/app/shared/widget/input/custom_text_form_field.dart';

class EnderecoInput extends StatelessWidget {
  final EnderecoController controller;

  EnderecoInput({required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 16,
        ),
        child: Column(
          children: [
            Text(
              'Endereço',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            CustomTextFormField(
              label: 'Logradouro',
              controller: controller.logradouro,
            ),
            CustomTextFormField(
              label: 'Número',
              controller: controller.numero,
            ),
            CustomTextFormField(
              label: 'Cidade',
              controller: controller.cidade,
            ),
            CustomTextFormField(
              label: 'Estado',
              controller: controller.estado,
            ),
          ],
        ),
      ),
    );
  }
}
