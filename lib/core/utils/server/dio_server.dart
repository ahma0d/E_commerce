import 'package:dio/dio.dart';

class DioServer {
  static Dio dio = Dio();

  static Future<Response> getRequest(
      {required url, Map<String, dynamic>? data}) {
    return dio.get(url, data: data);
  }

  static Future<Response> postRequest(
      {required url, required Map<String, dynamic> data}) {
    return dio.post(url, data: data);
  }

  static Future<Response> putRequest(
      {required url, required Map<String, dynamic> data}) {
    return dio.put(url, data: data);
  }

  static Future<Response> patchRequest(
      {required url, required Map<String, dynamic> data}) {
    return dio.patch(url, data: data);
  }

  static Future<Response> deleteRequest(
      {required url, required Map<String, dynamic> data}) {
    return dio.delete(url, data: data, queryParameters: data);
  }
}
