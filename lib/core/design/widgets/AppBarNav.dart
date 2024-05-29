// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../themes/colors.dart';
import '../themes/text_styles.dart';

class AppBarNav extends AppBar {
  final String titleText;
  final BuildContext context;
  AppBarNav({required this.context, required this.titleText, super.key})
      : super(
          title: Text(
            titleText,
            style: TextStyle(fontWeight: FontWeight.w700, color: Colors.black),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios, color: primaryTextColor),

            //replace with our own icon data.
          ),
          backgroundColor: backgroundColor,
          elevation: 0,
        );
}
