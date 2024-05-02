import 'package:aplikacjaflutter/special_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: SpecialContainer([Colors.red, Colors.red]),
      ),
    ),
  );
}
