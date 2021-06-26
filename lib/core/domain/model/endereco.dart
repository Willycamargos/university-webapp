import 'package:json_annotation/json_annotation.dart';

part 'endereco.g.dart';

@JsonSerializable()
class Endereco {
  late String logradouro;
  late String numero;
  late String cidade;
  late String estado;

  Endereco(this.logradouro, this.numero, this.cidade, this.estado);

  factory Endereco.fromJson(Map<String, dynamic> json) =>
      _$EnderecoFromJson(json);

  Map<String, dynamic> toJson() => _$EnderecoToJson(this);
}
