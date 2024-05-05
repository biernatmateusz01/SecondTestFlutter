



// import 'package:flutter/material.dart';
// import 'package:aplikacjaflutter/components/card_Element.dart';
// import 'package:carousel_slider/carousel_slider.dart';

// class CarouselSlider extends StatelessWidget {
//   final String text; 

//   const CarouselSlider({Key? key, required this.text}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return (
//       CarouselSlider(
//               options: CarouselOptions(height: 400.0),
//               items: [1, 2, 3, 4, 5].map((i) {
//                 return Builder(
//                   builder: (BuildContext context) {
//                     return CardElement(text: i.toString());
//                   },
//                 );
//               }).toList(),
//             ),
//     )
//   }
// }
import 'package:flutter/material.dart';
import 'package:aplikacjaflutter/components/card_Element.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MyCarouselSlider extends StatefulWidget {
  const MyCarouselSlider({Key? key}) : super(key: key);

  @override
  _MyCarouselSliderState createState() => _MyCarouselSliderState();
}

class _MyCarouselSliderState extends State<MyCarouselSlider> {
  final List<int> myList = [1, 2, 3, 4, 5, 6];
  var message = 'hello from carousel_element';
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(height: 400.0),
      items: myList.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return CardElement(text: i.toString(), message: message);
          },
        );
      }).toList(),
    );
  }
}

