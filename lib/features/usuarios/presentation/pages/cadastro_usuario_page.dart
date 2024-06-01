import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:labtech_mobile/app_router.dart';
import 'package:labtech_mobile/core/design/themes/colors.dart';
import 'package:labtech_mobile/core/design/widgets/AppBarNav.dart';
import 'package:labtech_mobile/features/login/presentation/pages/login_page.dart';
import 'package:labtech_mobile/features/usuarios/data/models/cadastro_usuario_model.dart';
import 'package:labtech_mobile/features/usuarios/presentation/controllers/cadastro_usuario_controller.dart';

class CadastroUsuarioPage extends StatefulWidget {
  const CadastroUsuarioPage({Key? key}) : super(key: key);

  @override
  _CadastroUsuarioPageState createState() => _CadastroUsuarioPageState();
}

class _CadastroUsuarioPageState extends State<CadastroUsuarioPage> {
  final CadastroUsuarioController _controller =
      GetIt.I.get<CadastroUsuarioController>();
  bool _showError = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarNav(
        titleText: 'Cadastre-se',
        context: context,
      ),
      body: Observer(
        builder: (_) {
          return SingleChildScrollView(
            child: Form(
              key: _controller.formCadastro,
              child: Column(
                children: [
                  if (_showError)
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Preencha todos os dados do formulário',
                        style: TextStyle(color: Colors.red, fontSize: 16),
                      ),
                    ),
                  SizedBox(
                    height: 300,
                    width: 450,
                    child: Image.asset(
                      'assets/images/register.png',
                      height: 179,
                      width: 197.9,
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
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Icon(
                            Icons.person,
                            color: Color(0xFF525252),
                          ),
                        ),
                        const SizedBox(width: 5),
                        Expanded(
                          child: TextField(
                            controller: _controller.name,
                            decoration: const InputDecoration(
                              hintText: 'Nome completo',
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
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Icon(
                            Icons.email_outlined,
                            color: Color(0xFF525252),
                          ),
                        ),
                        const SizedBox(width: 5),
                        Expanded(
                          child: TextField(
                            controller: _controller.email,
                            keyboardType: TextInputType.emailAddress,
                            decoration: const InputDecoration(
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
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Icon(
                            Icons.lock_outline,
                            color: Color(0xFF525252),
                          ),
                        ),
                        const SizedBox(width: 5),
                        Expanded(
                          child: TextField(
                            obscureText: true,
                            controller: _controller.password,
                            decoration: const InputDecoration(
                              hintText: 'Senha',
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
                              hintText: 'Confirme sua senha',
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
                      onPressed: () async {
                        setState(() {
                          _showError = !_controller.formCadastro.currentState!
                              .validate();
                        });

                        if (!_showError) {
                          final result = await _controller.enviarDados(
                            usuario: CadastroUsuarioModel(
                              name: _controller.name.text,
                              email: _controller.email.text,
                              password: _controller.password.text,
                            ),
                          );

                          if (result != null) {
                            _showModal(context,
                                'Cadastro realizado com sucesso! Faça seu login para aproveitar o que o app tem a oferecer.');
                          } else {
                            _showModal(context,
                                'Falha no cadastro, favor tente novamente mais tarde!');
                          }
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: const Color(0xFF112D4E),
                        elevation: 4,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 65, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7),
                        ),
                      ),
                      child: const Text('Criar conta'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed(
                          AppRouter.login,
                        );
                      },
                      child: const Text.rich(
                        TextSpan(
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF525252),
                          ),
                          children: [
                            TextSpan(text: 'Já possui um registro? '),
                            TextSpan(
                              text: 'Entre aqui',
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
        },
      ),
    );
  }

  void _showModal(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: SingleChildScrollView(
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 400, // Define o tamanho máximo da modal
                maxHeight: 500, // Define o tamanho máximo da modal
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  message ==
                          'Falha no cadastro, favor tente novamente mais tarde!'
                      ? Image.asset(
                          'assets/images/error.png',
                          height: 300,
                          width: 300,
                        )
                      : Image.asset(
                          'assets/images/sucess.png',
                          height: 300,
                          width: 300,
                        ),
                  SizedBox(height: 20),
                  Text(
                    message,
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          actions: <Widget>[
            message == 'Falha no cadastro, favor tente novamente mais tarde!'
                ? ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          primaryColor, // Altere para a cor desejada
                    ),
                    child: const Text(
                      'OK',
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                : ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          primaryColor, // Altere para a cor desejada
                    ),
                    child: const Text(
                      'Fazer login',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
          ],
        );
      },
    );
  }
}
