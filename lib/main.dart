import 'package:flutter/material.dart';
import 'package:labtech_mobile/app/features/login/pages/login_page.dart';

import 'app/features/eventos/pages/detalhe_evento_page.dart';
import 'app/features/eventos/pages/home_page.dart';
import 'app_router.dart';

void main() {
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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
