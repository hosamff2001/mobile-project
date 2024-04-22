import 'package:dio/dio.dart';

class DioHelper {
  static late Dio dio;

  static init() {
    dio = Dio(BaseOptions(
      baseUrl: "https://dummyjson.com",
      receiveDataWhenStatusError: true,
    ));
  }

  static Future<Response> get(
      {required String url,
      Map<String, dynamic>? query,
      String lang = "en",
      String? token}) async {
    dio.options.headers = {
      "lang": lang,
      "Authorization": token,
      "Content-Type": "application/json",
    };
    return await dio.get(url, queryParameters: query);
  }

  static Future<Response> post(
      {required String url,
      Map<String, dynamic>? query,
      required Map<String, dynamic> data,
      String lang = "en",
      String? token}) async {
    dio.options.headers = {
      "lang": lang,
      "Authorization": token,
      "Content-Type": "application/json",
    };
    return await dio.post(url, queryParameters: query, data: data);
  }

  static Future<Response> put(
      {required String url,
      Map<String, dynamic>? query,
      required Map<String, dynamic> data,
      String lang = "en",
      String? token}) async {
    dio.options.headers = {
      "lang": lang,
      "Authorization": token,
      "Content-Type": "application/json",
    };
    return await dio.put(url, queryParameters: query, data: data);
  }
}
