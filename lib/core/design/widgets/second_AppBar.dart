import 'package:flutter/material.dart';
import 'package:labtech_mobile/features/login/presentation/pages/login_page.dart';
import '../../../features/eventos/presentation/pages/home_page.dart';
import '../themes/colors.dart';

class SecondAppBar extends AppBar {
  final Widget? action;
  final BuildContext context;
  final Function? backButtomAction;

  SecondAppBar({
    required this.context,
    this.backButtomAction,
    this.action,
    Key? key,
  }) : super(
          key: key,
          title: const Text(
            'LABTECH',
            style: TextStyle(fontWeight: FontWeight.w700, color: Colors.black),
          ),
          // titleTextStyle: TextStyles.bodyText9,
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => HomePage()));
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 35,
            ),
          ),
          backgroundColor: backgroundColor,
          elevation: 0,
        );
}
