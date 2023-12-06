import 'package:flutter/material.dart';
import 'package:labtech_mobile/app/features/eventos/widget/eventos_destaque.dart';
import 'package:labtech_mobile/app/features/eventos/widget/novos_eventos.dart';
import 'package:labtech_mobile/core/design/themes/label_widget.dart';

import '../../../../core/design/themes/colors.dart';
import '../../../../core/design/themes/text_styles.dart';
import '../../../../core/design/themes/textbox_decorations.dart';
import '../../../../core/design/widgets/SAppBar.dart';

class DetalheEventoPage extends StatefulWidget {
  const DetalheEventoPage({Key? key}) : super(key: key);

  @override
  _DetalheEventoPageState createState() => _DetalheEventoPageState();
}

class _DetalheEventoPageState extends State<DetalheEventoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SAppBar(context: context, action: null),
      body: Stack(
        children: [
          Container(
            color: backgroundColor,
          ),
          SingleChildScrollView(
            child: Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/padoru.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
