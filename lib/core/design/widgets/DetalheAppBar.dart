import 'package:flutter/material.dart';
import 'package:labtech_mobile/features/login/presentation/pages/login_page.dart';
import '../../../features/eventos/presentation/pages/home_page.dart';
import '../themes/colors.dart';

class DetalheAppBar extends AppBar {
  final Widget? action;
  final BuildContext context;
  final Function? backButtomAction;

  DetalheAppBar({
    required this.context,
    this.backButtomAction,
    this.action,
    Key? key,
  }) : super(
          key: key,
          title: const Text(
            'Nome do Evento',
            style: TextStyle(fontWeight: FontWeight.w700, color: Colors.black),
          ),
          // titleTextStyle: TextStyles.bodyText9,
          centerTitle: true,
          actions: [
            if (action != null) action!,
            IconButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => LoginPage()));
              },
              icon: const Icon(
                Icons.person_outline,
                color: Colors.black,
                size: 35,
              ),
            ),
          ],
          leading: IconButton(
            onPressed: () {
              Navigator.popUntil(context, (route) => route.isFirst);
            },
            icon: const Icon(
              Icons.arrow_back_outlined,
              color: Colors.black,
              size: 35,
            ),
          ),
          backgroundColor: backgroundColor,
          elevation: 0,
        );
}
