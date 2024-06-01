import 'package:flutter/material.dart';
import 'package:labtech_mobile/features/usuarios/data/models/cadastro_usuario_model.dart';
import 'package:labtech_mobile/features/usuarios/domain/usecases/enviar_cadastro_usecase.dart';
import 'package:mobx/mobx.dart';

part 'cadastro_usuario_controller.g.dart';

class CadastroUsuarioController = _CadastroUsuarioControllerBase
    with _$CadastroUsuarioController;

abstract class _CadastroUsuarioControllerBase with Store {
  final EnviarCadastroUsecase enviarCadastroUsecase;

  _CadastroUsuarioControllerBase({required this.enviarCadastroUsecase});

  @observable
  bool isLoading = false;

  @observable
  CadastroUsuarioModel? cadastro;

  final GlobalKey<FormState> formCadastro = GlobalKey<FormState>();
  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  @action
  Future<dynamic> enviarDados({required CadastroUsuarioModel usuario}) async {
    isLoading = true;
    try {
      Map<String, dynamic>? result;
      result = await enviarCadastroUsecase.cadastrarUsuario(usuario: usuario);
      return result;
    } catch (e) {
      return {"sucesso": false, "mensagem": e.toString()};
    } finally {
      isLoading = false;
    }
  }
}
