import 'package:flutter/material.dart';
import 'package:labtech_mobile/app/features/eventos/widget/eventos_destaque.dart';
import 'package:labtech_mobile/app/features/eventos/widget/novos_eventos.dart';
import 'package:labtech_mobile/core/design/themes/label_widget.dart';

import '../../../../core/design/themes/colors.dart';
import '../../../../core/design/themes/text_styles.dart';
import '../../../../core/design/themes/textbox_decorations.dart';
import '../../../../core/design/widgets/SAppBar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SAppBar(context: context, action: null),
      body: Stack(
        children: [
          Container(
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                EventosDestaque(),
                SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: TextFormField(
                    controller: _searchController,
                    decoration: TextboxDecorations.decoration.copyWith(
                      fillColor: backgroundTextBoxColor,
                      filled: true,
                      hintText: 'Pesquisar eventos',
                      // hintStyle: TextStyles.bodyText1,
                      suffixIcon: IconButton(
                        icon: const Icon(Icons.search),
                        onPressed: () {
                        },
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                const Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: LabelWidget(text: 'Novos Eventos'),
                  ),
                ),
                NovosEventos(),
                const SizedBox(height: 16),
                const Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: LabelWidget(text: 'Vistos Recentemente'),
                  ),
                ),
                NovosEventos(),
                const SizedBox(height: 16),
                const Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child:
                        LabelWidget(text: 'Baseado nos seus eventos favoritos'),
                  ),
                ),
                NovosEventos(),
                const SizedBox(height: 16),
                const Padding(
                  padding: EdgeInsets.only(left: 16.0, right: 16.0),
                  child: Divider(),
                ),
                Column(
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Sobre nós',
                          // style: TextStyles.label1,
                        )),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'FAQ',
                          // style: TextStyles.label1,
                        )),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Fale conosco',
                          // style: TextStyles.label1,
                        )),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
