// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cadastro_usuario_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CadastroUsuarioController on _CadastroUsuarioControllerBase, Store {
  late final _$isLoadingAtom =
      Atom(name: '_CadastroUsuarioControllerBase.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$cadastroAtom =
      Atom(name: '_CadastroUsuarioControllerBase.cadastro', context: context);

  @override
  CadastroUsuarioModel? get cadastro {
    _$cadastroAtom.reportRead();
    return super.cadastro;
  }

  @override
  set cadastro(CadastroUsuarioModel? value) {
    _$cadastroAtom.reportWrite(value, super.cadastro, () {
      super.cadastro = value;
    });
  }

  late final _$enviarDadosAsyncAction = AsyncAction(
      '_CadastroUsuarioControllerBase.enviarDados',
      context: context);

  @override
  Future<dynamic> enviarDados({required CadastroUsuarioModel usuario}) {
    return _$enviarDadosAsyncAction
        .run(() => super.enviarDados(usuario: usuario));
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
cadastro: ${cadastro}
    ''';
  }
}
