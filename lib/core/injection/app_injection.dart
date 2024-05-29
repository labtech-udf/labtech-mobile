import 'package:get_it/get_it.dart';
import 'package:labtech_mobile/core/http/http_client_dio.dart';
import 'package:labtech_mobile/core/http/http_client_impl.dart';
import 'package:labtech_mobile/core/localstorage/security_shared_preference.dart';
import 'package:labtech_mobile/features/usuarios/data/datasources/usuarios_datasource.dart';
import 'package:labtech_mobile/features/usuarios/data/repositories/usuario_repository.dart';
import 'package:labtech_mobile/features/usuarios/domain/usecases/enviar_cadastro_usecase.dart';
import 'package:labtech_mobile/features/usuarios/presentation/controllers/cadastro_usuario_controller.dart';

class AppInjection {
  static final GetIt getIt = GetIt.instance;

  static Future<void> init() async {
    //Dependências
    getIt.registerFactory<HttpClientDio>(() => HttpClientImpl());
    getIt.registerLazySingleton(() => SecuritySharedPreference());

    //Usuários
    getIt.registerFactory<UsuarioDatasource>(() => UsuarioDatasourceImpl(
          client: getIt.get<HttpClientDio>(),
        ));
    getIt.registerFactory<UsuarioRepository>(() => UsuarioRepositoryImpl(
          usuarioDatasource: getIt.get<UsuarioDatasource>(),
        ));
    getIt.registerLazySingleton<EnviarCadastroUsecase>(() =>
        EnviarCadastroUsecaseImpl(repository: getIt.get<UsuarioRepository>()));
    getIt.registerLazySingleton(() => CadastroUsuarioController(
          enviarCadastroUsecase: getIt.get<EnviarCadastroUsecase>(),
        ));
  }
}
