
// import 'package:aplikacjaflutter/components/special_navigation.dart';
// import 'package:aplikacjaflutter/special_container.dart';
import 'package:aplikacjaflutter/components/carousel_element.dart';
import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     const MaterialApp(
//       home: Scaffold(

//         // body: SpecialContainer([Colors.red, Colors.red]),
//         body: Padding(
//           padding: EdgeInsets.all(16.0),
//           child: SpecialNavigation(text: 'asfds'),
//         ),
//       ),
//     ),
//   );
// }

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.red[600],
          body: Container(
            padding: const EdgeInsets.only(
                top: 15, bottom: 15), // Padding from top and bottom

            child: const MyCarouselSlider(),
            
          )
          // padding: EdgeInsets.all(16.0), // Padding around the content
          // child: SpecialNavigation(text: 'asfds'),

          ),
    ),
  );
}
