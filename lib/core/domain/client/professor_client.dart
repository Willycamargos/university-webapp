import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:university_webapp/core/domain/model/professor.dart';

part 'professor_client.g.dart';

@RestApi()
abstract class _ProfessorClient {
  factory _ProfessorClient(Dio dio, {String baseUrl}) = __ProfessorClient;

  @GET("/professores")
  Future<List<Professor>> getProfessores();

  @POST("/professores")
  Future<Professor> salvarProfessor(@Body() Professor professor);
}

class ProfessorClient {
  static _ProfessorClient client =
      _ProfessorClient(Dio(), baseUrl: "http://192.168.0.108:8080");
}
