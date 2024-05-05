import 'package:flutter/material.dart';

class CardElement extends StatelessWidget {
  final String text;
  final String message;


  const CardElement({Key? key, required this.text, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Your onPressed event logic goes here
        print('CardElement tapped!');
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(horizontal: 5.12),
        margin: const EdgeInsets.symmetric(horizontal: 5.12),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(
              10), // You can adjust the radius value as needed
        ),
        child: Text(
          'text $text, $message',
          style: const TextStyle(fontSize: 16.0),
        ),
      ),
    );
  }
}
