import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../../../../core/design/themes/colors.dart';

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
                Container(
                  width: double.infinity,
                  color: Colors.blue,
                  child: Center(
                    child: Text('Slide 1'),
                  ),
                ),
                Container(
                  width: double.infinity,
                  color: Colors.green,
                  child: Center(
                    child: Text('Slide 2'),
                  ),
                ),
                Container(
                  width: double.infinity,
                  color: Colors.red,
                  child: Center(
                    child: Text('Slide 3'),
                  ),
                ),
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
