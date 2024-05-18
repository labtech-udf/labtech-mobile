import 'package:dio/dio.dart';

class DioExceptions implements Exception {
  late String message;

  DioExceptions.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.cancel:
        message = "Requisição cancelada";
        break;
      case DioExceptionType.sendTimeout:
        message = "Tempo de conexão excedido";
        break;
      case DioExceptionType.badResponse:
        var msgStr = "";
        if (dioException.response?.data["errors"][0] != null) {
          if (dioException.response?.data["errors"][0].length == 1) {
            msgStr = dioException.response?.data["errors"] as String;
          } else {
            msgStr = dioException.response?.data["errors"][0] as String;
          }
        } else {
          msgStr = "Falha na requisição com o servidor";
        }
        message = msgStr;
        break;
      case DioExceptionType.receiveTimeout:
        message = "Tempo de resposta excedido";
        break;
      case DioExceptionType.unknown:
        message = _handleError(
            dioException.response?.statusCode, dioException.response?.data);
        break;
      default:
        message = "Ocorreu um erro inesperado";
        break;
    }
  }

  String _handleError(int? statusCode, dynamic error) {
    switch (statusCode) {
      case 400:
        return 'Requisição má sucedida';
      case 401:
        return 'Não autorizado. Usuário ou senha inválidos';
      case 403:
        return 'Acesso negado. Você não tem permissão para acessar este recurso';
      case 404:
        return error["message"];
      case 500:
        return 'Erro de servidor. Tente novamente mais tarde';
      default:
        return 'Ocorreu um erro inesperado. Tente novamente mais tarde';
    }
  }

  @override
  String toString() => message;
}
 