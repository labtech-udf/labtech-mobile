import 'package:flutter/material.dart';

import 'features/eventos/presentation/pages/home_page.dart';
import 'core/injection/app_injection.dart';
import 'app_router.dart';

void main() async {
  await AppInjection.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      routes: AppRouter.routes(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple,
            brightness: Brightness.light
        ),
        useMaterial3: true,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.dark,
        ).copyWith(
          primary: Colors.white, //Sobre nós, FAQ, Fale conosco
          background: const Color(0xFF00164A), // Fundo
          onSurface: Colors.white, // titulos e texto do card
        ),
    appBarTheme: const AppBarTheme(
    backgroundColor:Color(0xFF00164A), // Cor da AppBar no tema escuro
    foregroundColor: Colors.white,
    ), // Cor do texto da AppBar no tema escuro
        useMaterial3: true,
        brightness: Brightness.dark,
      ),
      themeMode: ThemeMode.system,
      home: const HomePage(),
    );
  }
}

