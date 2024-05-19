import 'package:flutter/material.dart';


import 'features/eventos/presentation/pages/home_page.dart';
import 'features/login/presentation/pages/login_page.dart';
import 'app_router.dart';

Map<String, dynamic> routerApp(RouteSettings settings) => {
      AppRouter.home: MaterialPageRoute(
        settings: settings,
        builder: (context) => const HomePage(),
      ),
      AppRouter.login: MaterialPageRoute(
        settings: settings,
        builder: (context) => const LoginPage(),
      ),
    };
