import 'package:flutter/material.dart';
import 'package:labtech_mobile/app/features/login/pages/login_page.dart';
import '../../../app/features/eventos/pages/home_page.dart';
import '../../../app_router.dart';
import '../themes/colors.dart';
import '../themes/text_styles.dart';

class SAppBar extends AppBar {
  final Widget? action;
  final BuildContext context;
  final Function? backButtomAction;

  SAppBar({
    required this.context,
    this.backButtomAction,
    this.action,
    Key? key,
  }) : super(
          key: key,
          title: const Text(
            'LOGO',
            style: TextStyle(fontWeight: FontWeight.w700, color: Colors.black),
          ),
          titleTextStyle: TextStyles.bodyText9,
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
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => HomePage()),
              );
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
