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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
