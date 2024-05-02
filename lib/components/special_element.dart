
import 'package:flutter/material.dart';

class SpecialElement extends StatelessWidget {
  final String text; 

  const SpecialElement({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontSize: 40, fontWeight: FontWeight.w800),
    );
  }
}