import 'package:json_annotation/json_annotation.dart';
import 'package:university_webapp/core/domain/model/endereco.dart';

part 'professor.g.dart';

@JsonSerializable()
class Professor {
  late String nome;
  late int numeroMatricula;
  late Endereco endereco;

  Professor(this.nome, this.numeroMatricula, this.endereco);

  factory Professor.fromJson(Map<String, dynamic> json) =>
      _$ProfessorFromJson(json);

  Map<String, dynamic> toJson() => _$ProfessorToJson(this);
}
