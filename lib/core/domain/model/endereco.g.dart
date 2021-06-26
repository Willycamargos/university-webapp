// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'endereco.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Endereco _$EnderecoFromJson(Map<String, dynamic> json) {
  return Endereco(
    json['logradouro'] as String,
    json['numero'] as String,
    json['cidade'] as String,
    json['estado'] as String,
  );
}

Map<String, dynamic> _$EnderecoToJson(Endereco instance) => <String, dynamic>{
      'logradouro': instance.logradouro,
      'numero': instance.numero,
      'cidade': instance.cidade,
      'estado': instance.estado,
    };
