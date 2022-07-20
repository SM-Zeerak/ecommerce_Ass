import 'package:flutter/material.dart';

class size_measurement extends StatelessWidget {

  final String text;
  final String size;

  const size_measurement({
    Key? key, 
    required this.text, 
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(text,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          letterSpacing: 2
        ),),
        SizedBox(height: 15,),
        Text(size,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          letterSpacing: 2
        ),),
      ],
    );
  }
}