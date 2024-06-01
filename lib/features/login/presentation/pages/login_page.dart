import 'package:flutter/material.dart';
import 'package:labtech_mobile/app_router.dart';
import 'package:labtech_mobile/core/design/widgets/second_AppBar.dart';

import '../../../../../core/design/widgets/SAppBar.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SecondAppBar(context: context, action: null),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: 450,
              child: Image.asset(
                'assets/images/login.png',
                height: 179,
                width: 197.9,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 20),
              child: const Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Entre com o e-mail acadêmico',
                        textDirection: TextDirection.ltr,
                        style:
                            TextStyle(fontSize: 20.0, color: Color(0xFF525252)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: 330,
              height: 52,
              margin: const EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.blue.withOpacity(0.05),
              ),
              child: const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Icon(
                      Icons.email_outlined,
                      color: Color(0xFF525252),
                    ),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Email',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 330,
              height: 52,
              margin: const EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.blue.withOpacity(0.05),
              ),
              child: const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Icon(
                      Icons.lock_outline,
                      color: Color(0xFF525252),
                    ),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Senha',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 30),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: const Color(0xFF112D4E),
                  elevation: 4,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 65, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7),
                  ),
                ),
                child: const Text('Entrar'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed(
                    AppRouter.cadastroUsuario,
                  );
                },
                child: const Text.rich(
                  TextSpan(
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF525252),
                    ),
                    children: [
                      TextSpan(text: 'Não tem conta? '),
                      TextSpan(
                        text: 'Cadastre-se aqui',
                        style: TextStyle(
                          color: Color(0xFF3A5CC0),
                          decoration: TextDecoration.underline,
                          decorationColor: Color(0xFF3A5CC0),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
