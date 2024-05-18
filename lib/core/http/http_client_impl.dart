import 'package:dio/dio.dart';
import 'package:labtech_mobile/core/http/auth_interceptor_dio.dart';


import 'dio_exceptions.dart';
import 'exception_interceptor_dio.dart';
import 'http_client_dio.dart';

class HttpClientImpl implements HttpClientDio {
  Dio client = Dio();

  HttpClientImpl() {
    client.interceptors.add(ExceptionInterceptorDio());
    client.interceptors.add(AuthInterceptorDio());
  }
  @override
  Future delete(
      {required Map<String, dynamic> baseOptions,
      required String endpoint,
      Map<String, dynamic>? data,
      Map<String, String>? headers}) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<dynamic> get(
      {required Map<String, dynamic> baseOptions,
      required String endpoint,
      Map<String, dynamic>? queryParameters,
      List<Map<String, String>>? headers}) async {
    Response response;
    try {
      client.options = BaseOptions(
        baseUrl: baseOptions["baseUrl"],
        connectTimeout: baseOptions["connectTimeout"],
        receiveTimeout: baseOptions["receiveTimeout"],
      );
      if (headers != null) {
        for (var header in headers) {
          client.options.headers.addAll(header);
        }
      }

      response = await client.get(endpoint);
      if (response.statusCode == 404) {
        throw Exception("Not Found");
      }
      if (response.data != null) {
        return response;
      }
    } on DioException catch (e) {
      throw DioExceptions.fromDioException(e).message;
    } on Exception {
      rethrow;
    }
  }

  @override
  Future<dynamic> multipart(
      {required Map<String, dynamic> baseOptions,
      required String endpoint,
      FormData? data,
      List<Map<String, String>>? headers}) async {
    Response response;
    try {
      client.options = BaseOptions(
        baseUrl: baseOptions["baseUrl"],
        connectTimeout: baseOptions["connectTimeout"],
        receiveTimeout: baseOptions["receiveTimeout"],
      );
      if (headers != null) {
        for (var header in headers) {
          client.options.headers.addAll(header);
        }
      }

      response = await client.post(endpoint, data: data);
      if (response.statusCode == 404) {
        throw Exception("Not Found");
      }
      if (response.data != null) {
        return response;
      }
    } on DioException catch (e) {
      throw DioExceptions.fromDioException(e).message;
    } on Exception {
      rethrow;
    }
  }

  @override
  Future patch(
      {required Map<String, dynamic> baseOptions,
      required String endpoint,
      Map<String, dynamic>? data,
      Map<String, String>? headers}) {
    // TODO: implement patch
    throw UnimplementedError();
  }

  @override
  Future post(
      {required Map<String, dynamic> baseOptions,
      required String endpoint,
      Object? data,
      List<Map<String, String>>? headers,
      String? contentType}) async {
    Response response;
    try {
      client.options = BaseOptions(
        baseUrl: baseOptions["baseUrl"],
        connectTimeout: baseOptions["connectTimeout"],
        receiveTimeout: baseOptions["receiveTimeout"],
      );
      if (contentType != null) {
        client.options.contentType = contentType.toString();
      }
      if (headers != null) {
        for (var header in headers) {
          client.options.headers.addAll(header);
        }
      }

      response = await client.post(endpoint, data: data);

      if (response.statusCode == 404) {
        throw Exception("Not Found");
      }
      if (response.data != null) {
        return response;
      }
    } on DioException catch (e) {
      return throw DioExceptions.fromDioException(e).message;
    } on Exception {
      rethrow;
    }
  }

  @override
  Future put(
      {required Map<String, dynamic> baseOptions,
      required String endpoint,
      Map<String, dynamic>? data,
      List<Map<String, String>>? headers}) async {
    Response response;
    try {
      client.options = BaseOptions(
        baseUrl: baseOptions["baseUrl"],
        connectTimeout: baseOptions["connectTimeout"],
        receiveTimeout: baseOptions["receiveTimeout"],
      );
      if (headers != null) {
        for (var header in headers) {
          client.options.headers.addAll(header);
        }
      }
      response = await client.put(endpoint, data: data);
      if (response.statusCode == 404) {
        throw Exception("Not Found");
      }
      if (response.data != null) {
        return response;
      }
    } on DioException catch (e) {
      return throw DioExceptions.fromDioException(e).message;
    } on Exception {
      rethrow;
    }
    throw UnimplementedError();
  }
}
