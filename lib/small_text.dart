import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  final String text; // Dodaj pole tekstowe, aby przechowywać tekst

  const SmallText({Key? key, required this.text}) : super(key: key); // Dodaj konstruktor, który przyjmuje tekst jako argument

  @override
  Widget build(BuildContext context) {
    return Text(
      text, // Ustaw tekst na przekazany tekst
      style: const TextStyle(fontSize: 10,),
    );
  }
}
