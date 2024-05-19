import 'package:labtech_mobile/features/usuarios/data/datasources/usuarios_datasource.dart';
import 'package:labtech_mobile/features/usuarios/data/models/cadastro_usuario_model.dart';

abstract class UsuarioRepository {
  Future<Map<String, dynamic>?> cadastrarUsuario(
      {required CadastroUsuarioModel usuario});
}

class UsuarioRepositoryImpl implements UsuarioRepository {
  final UsuarioDatasource usuarioDatasource;
  UsuarioRepositoryImpl({required this.usuarioDatasource});

  @override
  Future<Map<String, dynamic>?> cadastrarUsuario(
      {required CadastroUsuarioModel usuario}) {
    try {
      return usuarioDatasource.cadastrarUsuario(usuario: usuario);
    } catch (e) {
      rethrow;
    }
  }
}
