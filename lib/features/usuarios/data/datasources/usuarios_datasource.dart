import 'package:labtech_mobile/core/config/end_points_consts.dart';
import 'package:labtech_mobile/core/config/http_config.dart';
import 'package:labtech_mobile/core/http/http_client_dio.dart';
import 'package:labtech_mobile/core/http/server_exception.dart';
import 'package:labtech_mobile/features/usuarios/data/models/cadastro_usuario_model.dart';

abstract class UsuarioDatasource {
  Future<Map<String, dynamic>?> cadastrarUsuario(
      {required CadastroUsuarioModel usuario});
}

class UsuarioDatasourceImpl implements UsuarioDatasource {
  final HttpClientDio client;
  UsuarioDatasourceImpl({required this.client});

  @override
  Future<Map<String, dynamic>?> cadastrarUsuario(
      {required CadastroUsuarioModel usuario}) async {
    try {
      var result = await client.post(
          baseOptions: HttpConfig.localhost,
          endpoint: EndPointsConsts.cadastroUsuario,
          data: usuario.toJson());

      if (result.statusCode == 200) {
        final usuario = result.data;
        return usuario;
      } else {
        throw ServerException(result.statusMessage);
      }
    } catch (e) {
      throw ServerException(e.toString());
    }
  }
}
