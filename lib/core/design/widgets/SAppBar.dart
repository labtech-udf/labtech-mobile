// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../app_router.dart';
import '../themes/colors.dart';
import '../themes/text_styles.dart';

class SAppBar extends AppBar {
  final Widget? action; // Alteração: agora é um único widget
  final BuildContext context;
  final Function? backButtomAction;

  SAppBar({
    required this.context,
    this.backButtomAction,
    this.action, // Alteração: agora é um único widget
    Key? key,
  }) : super(
          key: key,
          title: Text(
            'LOGO',
            style: TextStyle(fontWeight: FontWeight.w700, color: Colors.black),
          ),
          titleTextStyle: TextStyles.bodyText9,
          centerTitle: true,
          actions: [
            if (action !=
                null) // Adiciona o botão à direita do título apenas se action não for nulo
              action!,
            // Adicione seu novo botão à direita do título
            IconButton(
              onPressed: () {
                // Implemente a lógica para o novo botão aqui
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
              if (backButtomAction == null) {
                Navigator.pushNamed(context, AppRouter.home);
              } else {
                backButtomAction!();
              }
            },
            icon: const Icon(
              Icons.home_outlined,
              color: Colors.black,
              size: 35,
            ),
          ),
          backgroundColor: backgroundColor,
          elevation: 0,
        );
}
