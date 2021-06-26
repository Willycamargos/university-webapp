// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'professor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Professor _$ProfessorFromJson(Map<String, dynamic> json) {
  return Professor(
    json['nome'] as String,
    json['numeroMatricula'] as int,
    Endereco.fromJson(json['endereco'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ProfessorToJson(Professor instance) => <String, dynamic>{
      'nome': instance.nome,
      'numeroMatricula': instance.numeroMatricula,
      'endereco': instance.endereco,
    };
