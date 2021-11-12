import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:meta/meta.dart' show required;

class AuthenticationAPI {
  final Dio _dio = Dio();
  final Logger _logger = Logger();

  Future <void>register({
  required String username,
  required String password,
  }) async{
   final  response = await _dio.post(
     "https://tercerparcial.azurewebsites.net/api/ISAdministradors", 
    options: Options(
      headers: {
        "Content-Type": "application/json",
      }
    ),
    data: {
      "usuario": username,
      "contraseña": password,
    }
    );

    _logger.i(response.data);
  }



}