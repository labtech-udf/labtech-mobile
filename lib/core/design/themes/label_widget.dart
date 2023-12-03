import 'package:flutter/material.dart';

import '../themes/text_styles.dart';

class LabelWidget extends StatelessWidget {
  final String text;

  const LabelWidget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 0, 10),
      child: Text(text.toUpperCase(), style: TextStyles.label1),
    );
  }
}
