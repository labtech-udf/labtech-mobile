// import 'package:labtech_mobile/core/config/end_points_consts.dart';
// import 'package:labtech_mobile/core/config/http_config.dart';
// import 'package:labtech_mobile/core/http/http_client_dio.dart';
// import 'package:labtech_mobile/core/localstorage/security_local_storage.dart';

// abstract class LoginDatasource {}

// class LoginDatasourceImpl implements LoginDatasource {
//   final HttpClientDio httpClient;
//   final SecurityLocalStorage localStorage;

//   LoginDatasourceImpl({required this.httpClient, required this.localStorage});

//   @override
//   Future<ClienteLoginEntity?> login(String email, String senha) async {
//     try {
//       final response = await httpClient.post(
//         baseOptions: HttpConfig.optionsBFF,
//         endpoint: EndPointsConsts.login,
//         data: {
//           "cpf": cpf,
//           "senha": senha,
//         },
//       );
//       if (response.statusCode == 200) {
//         final cliente = ClienteLoginModel.fromJson(
//             response.data['objeto'], response.data['tokenSigopApi']);
//         return cliente;
//       } else {
//         return null;
//       }
//     } catch (e) {
//       print(e);
//       rethrow;
//     }
//   }
// }
