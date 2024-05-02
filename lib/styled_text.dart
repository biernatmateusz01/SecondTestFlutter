// import 'package:flutter/material.dart';

// class StyledText extends StatelessWidget {
//   const StyledText({super.key})
//   @override
//   Widget build(context){
//     return const Text('Jan Paweł', style: TextStyle(fontSize: 40, fontWeight: FontWeight.w800),);
//   }
// }

import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  final String text; // Dodaj pole tekstowe, aby przechowywać tekst

  const StyledText({Key? key, required this.text}) : super(key: key); // Dodaj konstruktor, który przyjmuje tekst jako argument

  @override
  Widget build(BuildContext context) {
    return Text(
      text, // Ustaw tekst na przekazany tekst
      style: const TextStyle(fontSize: 40, fontWeight: FontWeight.w800),
    );
  }
}
