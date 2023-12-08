import 'package:flutter/material.dart';

import 'app/features/eventos/pages/home_page.dart';
import 'app/features/login/pages/login_page.dart';

class AppRouter {
  // Rotas
  static const String home = '/home';
  static const String login = '/login';

  // Função para configurar as rotas no MaterialApp
  static Map<String, WidgetBuilder> routes() {
    return {
      home: (context) => const HomePage(),
      login: (context) => const LoginPage(),
      // Adicione outras rotas conforme necessário
    };
  }

  // Função para navegar para uma rota específica
  static void navigateTo(BuildContext context, String routeName) {
    Navigator.pushNamed(context, routeName);
  }
}
