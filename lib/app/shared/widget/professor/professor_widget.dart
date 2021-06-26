import 'package:flutter/material.dart';
import 'package:university_webapp/core/domain/model/professor.dart';

class ProfessorWidget extends StatelessWidget {
  late final Professor professor;

  ProfessorWidget({
    required this.professor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Nome: ${professor.nome}',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(
            height: 2,
          ),
          Text('Matrícula: ${professor.numeroMatricula}'),
        ],
      ),
    );
  }
}
