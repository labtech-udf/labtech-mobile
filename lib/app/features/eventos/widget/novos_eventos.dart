import 'dart:math';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../../../../core/design/themes/colors.dart';
import '../pages/detalhe_evento_page.dart';

class NovosEventos extends StatefulWidget {
  @override
  _NovosEventosState createState() => _NovosEventosState();
}

class _NovosEventosState extends State<NovosEventos> {
  int _currentIndex = 0;

  void _onSlideClicked(int index) {
    // Substitua pelo código de navegação para outra página
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => const DetalheEventoPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

       CarouselSlider(

          items: [

            _buildSlideContainer(Colors.blue, 'Slide 1', 0),
            _buildSlideContainer(Colors.green, 'Slide 2', 1),
            _buildSlideContainer(Colors.red, 'Slide 3', 2),

          ],
          options: CarouselOptions(
            height: 150.0,
            viewportFraction: 0.8,
            autoPlay: false,
            enlargeCenterPage: false,
            aspectRatio: 2.0,
            initialPage: 0,
            enableInfiniteScroll: false,
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

  Widget _buildSlideContainer(Color color, String text, int index) {
    return GestureDetector(
      onTap: () => _onSlideClicked(index),
      child: Container(
        height: 150.0,
        width: MediaQuery.of(context).size.width * 0.8,
        margin: EdgeInsets.symmetric(horizontal: 5.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Center(
          child: Text(text),
        ),
      ),
    );
  }
}