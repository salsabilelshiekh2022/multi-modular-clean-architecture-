import 'package:data/constants/constants.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  DioFactory();
  Future<Dio> getDio() async {
    final dio = Dio();
    Map<String, String> headers = {
      'Content-Type': applicationjson,
      'Accept': applicationjson,
      'Authorization': 'Bearer your_token_here',
      'lang': 'app_language_here',
    };
    dio.options = BaseOptions(
      baseUrl: 'https://api.example.com',
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
      headers: headers,
    );
    if (!kReleaseMode) {
      dio.interceptors.add(
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseHeader: true,
          responseBody: true,
        ),
      );
    }
    return dio;
  }
}
