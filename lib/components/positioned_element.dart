import 'package:flutter/material.dart';

class PositionedElement extends StatelessWidget {

  const PositionedElement({Key? key}) : super(key: key);


  @override

  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        // Widgety w Stack
        Positioned(
          top: 20.0, // odstęp od góry
          left: 20.0, // odstęp od lewej
          child: Container(
            width: 100.0,
            height: 100.0,
            color: Colors.red,
          ),
        ),
        Positioned(
          bottom: 20.0, // odstęp od dołu
          right: 20.0, // odstęp od prawej
          child: Container(
            width: 50.0,
            height: 50.0,
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}
