import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text('Menu'),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 199,
              width: 450,
              color: const Color(0xFF6891F2),
              child: Image.asset(
                'assets/images/girl.png',
                height: 179,
                width: 197.9,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(33.0),
              child: const Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Entre com o e-mail acadêmico',
                        textDirection: TextDirection.ltr,
                        style: TextStyle(fontSize: 20.0, color: Color(0xFF525252)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: 330,
              height: 52,
              margin: const EdgeInsets.only(top: 1),
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
          ],
        ),
      ),
    );
  }
}
