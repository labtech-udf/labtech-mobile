import 'package:dio/dio.dart';

abstract class HttpClientDio {
  Future<dynamic> get(
      {required Map<String, dynamic> baseOptions,
      required String endpoint,
      Map<String, dynamic>? queryParameters,
      List<Map<String, String>>? headers});
  Future<dynamic> post(
      {required Map<String, dynamic> baseOptions,
      required String endpoint,
      Object? data,
      List<Map<String, String>>? headers,
      String? contentType});
  Future<dynamic> delete(
      {required Map<String, dynamic> baseOptions,
      required String endpoint,
      Map<String, dynamic>? data,
      Map<String, String>? headers});
  Future<dynamic> put(
      {required Map<String, dynamic> baseOptions,
      required String endpoint,
      Map<String, dynamic>? data,
      List<Map<String, String>>? headers});
  Future<dynamic> patch(
      {required Map<String, dynamic> baseOptions,
      required String endpoint,
      Map<String, dynamic>? data,
      Map<String, String>? headers});
  Future<dynamic> multipart(
      {required Map<String, dynamic> baseOptions,
      required String endpoint,
      FormData data,
      List<Map<String, String>>? headers});
}
