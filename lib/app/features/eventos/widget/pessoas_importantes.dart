import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:labtech_mobile/core/design/themes/label_widget.dart';

import '../../../../core/design/themes/colors.dart';

class PessoasImportantes extends StatefulWidget {
  @override
  _PessoasImportantesState createState() => _PessoasImportantesState();
}

class _PessoasImportantesState extends State<PessoasImportantes> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: const LabelWidget(
            text: 'Pessoas importantes',
          ),
        ),
        CarouselSlider(
          items: [
            Container(
              height: 150.0,
              width: MediaQuery.of(context).size.width * 0.5,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Center(
                child: Text('Slide 1'),
              ),
            ),
            Container(
              height: 150.0,
              width: MediaQuery.of(context).size.width * 0.5,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Center(
                child: Text('Slide 2'),
              ),
            ),
            Container(
              height: 150.0,
              width: MediaQuery.of(context).size.width * 0.5,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Center(
                child: Text('Slide 3'),
              ),
            ),
          ],
          options: CarouselOptions(
            height: 150.0,
            viewportFraction: 0.55,
            autoPlay: false,
            enlargeCenterPage: false,
            aspectRatio: 2.0,
            initialPage: 0, // Define o slide inicial
            enableInfiniteScroll: false, // Desabilita a repetição dos slides
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
            scrollPhysics: BouncingScrollPhysics(),
          ),
        ),
      ],
    );
  }
}
