import 'package:labtech_mobile/features/usuarios/data/models/cadastro_usuario_model.dart';
import 'package:labtech_mobile/features/usuarios/data/repositories/usuario_repository.dart';

abstract class EnviarCadastroUsecase {
  Future<Map<String, dynamic>?> cadastrarUsuario(
      {required CadastroUsuarioModel usuario});
  // Future<Map<String, dynamic>?> atualizarCliente(
  //     {required CadastroUsuarioModel cliente});
}

class EnviarCadastroUsecaseImpl implements EnviarCadastroUsecase {
  final UsuarioRepository repository;

  EnviarCadastroUsecaseImpl({required this.repository});
  @override
  Future<Map<String, dynamic>?> cadastrarUsuario(
      {required CadastroUsuarioModel usuario}) async {
    try {
      return await repository.cadastrarUsuario(usuario: usuario);
    } catch (e) {
      rethrow;
    }
  }

  // @override
  // Future<Map<String, dynamic>?> atualizarUsuario(
  //     {required ClienteModel cliente}) async {
  //   try {
  //     return await repository.atualizarCliente(cliente: cliente);
  //   } catch (e) {
  //     rethrow;
  //   }
  // }
}
