import 'package:flutter/material.dart';
import 'package:labtech_mobile/features/features/eventos/widget/eventos_destaque.dart';
import 'package:labtech_mobile/features/features/eventos/widget/novos_eventos.dart';
import 'package:labtech_mobile/core/design/themes/label_widget.dart';

import '../../../../core/design/themes/colors.dart';
import '../../../../core/design/themes/text_styles.dart';
import '../../../../core/design/themes/textbox_decorations.dart';
import '../../../../core/design/widgets/SAppBar.dart';
import '../widget/pessoas_importantes.dart';

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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  width: double.infinity,
                  height: 250,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/padoru.jpeg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text('Nome do evento', 
                  // style: TextStyles.headLine1
                ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Row(
                    children: [
                      const Icon(Icons.event),
                      SizedBox(width: 8), // Espaçamento entre o ícone e o texto
                      Text(
                        'Sexta-feira, 05/01/2023',
                        // style: TextStyles.label1,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, top: 16),
                  child: Row(
                    children: [
                      const Icon(Icons.schedule),
                      SizedBox(width: 8), // Espaçamento entre o ícone e o texto
                      Text(
                        '18h',
                        // style: TextStyles.label1,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, top: 16),
                  child: Row(
                    children: [
                      const Icon(Icons.location_on_outlined),
                      SizedBox(width: 8), // Espaçamento entre o ícone e o texto
                      Text(
                        '704/904 Seps Eq 702/902, Brasília - DF',
                        // style: TextStyles.label1,
                      )
                    ],
                  ),
                ),

                Padding(
                  padding:
                  const EdgeInsets.only(left: 100.0, right: 100, top: 40),
                  child: SizedBox(
                    height: 50,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all<Color>(secondaryColor),
                      ),
                      onPressed: () {},
                      child: Text('Participar', 
                      style: TextStyle(color: Colors.white)
                      ),
                    ),
                  ),
                ),

                const Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Divider(),
                ),
                PessoasImportantes(),

                const Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Divider(),
                ),

                LabelWidget(text: 'descrição'),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 20, right: 20),
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
                    // style: TextStyles.bodyText1,
                  ),
                ),

                const Padding(
                  padding: const EdgeInsets.all(20.0),
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

                // Adicione mais widgets de texto ou outros elementos conforme necessário.
              ],
            ),
          ),
        ],
      ),
    );
  }
}