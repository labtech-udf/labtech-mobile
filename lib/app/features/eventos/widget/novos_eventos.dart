import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../../../../core/design/themes/colors.dart';

class NovosEventos extends StatefulWidget {
  @override
  _NovosEventosState createState() => _NovosEventosState();
}

class _NovosEventosState extends State<NovosEventos> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: [
            Container(
              height: 150.0,
              width: MediaQuery.of(context).size.width * 0.8,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
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
              width: MediaQuery.of(context).size.width * 0.8,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
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
              width: MediaQuery.of(context).size.width * 0.8,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
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
            viewportFraction: 0.8,
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
