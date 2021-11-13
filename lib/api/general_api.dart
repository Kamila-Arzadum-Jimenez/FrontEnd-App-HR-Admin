import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:meta/meta.dart' show required;

class GeneralAPI {
  final Dio _dio = Dio();
  final Logger _logger = Logger();

  Future <void>register({
  required String doctorn,
  required String startTimen,
  required String dayn,
  }) async{
   final  response = await _dio.post(
     "https://tercerparcial.azurewebsites.net/api/MedicinaGenerals", 
    options: Options(
      headers: {
        "Content-Type": "application/json",
      }
    ),
    data: {
      "doctor": doctorn,
      "startTime": startTimen,
      "dias": dayn,
    }
    );

    _logger.i(response.data);
  }



}