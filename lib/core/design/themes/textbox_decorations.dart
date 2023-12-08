import 'package:flutter/material.dart';

import 'colors.dart';

class TextboxDecorations {
  static const InputDecoration decoration = InputDecoration(
      fillColor: Colors.white,
      contentPadding: EdgeInsets.fromLTRB(30, 8, 30, 8),
      disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: disabledColor),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      errorBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 2, color: errorColor),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 2, color: errorColor),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: infoColor),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 0, color: Colors.transparent),
          borderRadius: BorderRadius.all(Radius.circular(10))));
}
