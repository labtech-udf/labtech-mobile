import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../../../../core/design/themes/colors.dart';
import '../pages/detalhe_evento_page.dart';

class EventosDestaque extends StatefulWidget {
  @override
  _EventosDestaqueState createState() => _EventosDestaqueState();
}

class _EventosDestaqueState extends State<EventosDestaque> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            CarouselSlider(
              items: [
                _buildSlideContainer(Colors.blue, 'Slide 1'),
                _buildSlideContainer(Colors.green, 'Slide 2'),
                _buildSlideContainer(Colors.red, 'Slide 3'),
              ],
              options: CarouselOptions(
                viewportFraction: 1.0,
                autoPlay: true,
                enlargeCenterPage: false,
                aspectRatio: 2.0,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                scrollPhysics: NeverScrollableScrollPhysics(),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  3, // Número total de slides
                  (index) => buildIndicator(index),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildSlideContainer(Color color, String text) {
    return GestureDetector(
      onTap: () => _onSlideClicked(color, text),
      child: Container(
        width: double.infinity,
        color: color,
        child: Center(
          child: Text(text),
        ),
      ),
    );
  }

  void _onSlideClicked(Color color, String text) {
    // Substitua pelo código de navegação para a página de detalhes
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetalheEventoPage(),
      ),
    );
  }

  Widget buildIndicator(int index) {
    return Container(
      width: 8.0,
      height: 8.0,
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: _currentIndex == index ? primaryColor : Colors.grey,
      ),
    );
  }
}
