import 'package:flutter/material.dart';
import 'package:labtech_mobile/features/usuarios/presentation/pages/cadastro_usuario_page.dart';

import 'features/eventos/presentation/pages/home_page.dart';
import 'features/login/presentation/pages/login_page.dart';

class AppRouter {
  // Rotas
  static const String home = '/home';
  static const String login = '/login';
  static const String cadastroUsuario = '/cadastro';

  // Função para configurar as rotas no MaterialApp
  static Map<String, WidgetBuilder> routes() {
    return {
      home: (context) => const HomePage(),
      login: (context) => const LoginPage(),
      cadastroUsuario: (context) => const CadastroUsuarioPage()
    };
  }

  // Função para navegar para uma rota específica
  static void navigateTo(BuildContext context, String routeName) {
    Navigator.pushNamed(context, routeName);
  }
}
