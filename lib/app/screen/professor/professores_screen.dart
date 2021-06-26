import 'package:flutter/material.dart';
import 'package:university_webapp/app/screen/professor/professor_cadastro.dart';
import 'package:university_webapp/app/shared/widget/professor/professor_widget.dart';
import 'package:university_webapp/core/domain/client/professor_client.dart';
import 'package:university_webapp/core/domain/model/professor.dart';

class ProfessoresScreen extends StatefulWidget {
  const ProfessoresScreen({Key? key}) : super(key: key);

  @override
  _ProfessoresScreenState createState() => _ProfessoresScreenState();
}

class _ProfessoresScreenState extends State<ProfessoresScreen> {
  List<Professor> professores = List.empty();

  @override
  Widget build(BuildContext context) {
    testDio();

    return Scaffold(
      appBar: AppBar(
        title: Text('Porfessores'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProfessorCadastro(),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: professores.length,
        itemBuilder: (context, index) {
          return ProfessorWidget(professor: professores[index]);
        },
      ),
    );
  }

  Future<void> testDio() async {
    ProfessorClient.client.getProfessores().then((value) {
      setState(() {
        professores = value;
      });
    });
  }
}
