import 'package:aplikacjaflutter/dice_roller.dart';
import 'package:flutter/material.dart';
import 'package:aplikacjaflutter/styled_text.dart';

const beginPosition = Alignment.topLeft;
const endPosition = Alignment.topRight;

// StatelessWidget - statyczne
// StatefulWidget - dynamiczne

class SpecialContainer extends StatelessWidget {
  const SpecialContainer(this.colors, {super.key});

  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32.32),
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: colors, begin: beginPosition, end: endPosition),
      ),
      child: const Center(
          child: DiceRoller()),
    );
  }
}
