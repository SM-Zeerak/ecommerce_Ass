import 'package:flutter/material.dart';

class paragarh extends StatelessWidget {
  const paragarh({
    Key? key,
    required this.paragraph,
  }) : super(key: key);

  final String paragraph;

  @override
  Widget build(BuildContext context) {
    return Text(paragraph,
    style: TextStyle(
      fontSize: 14,
      letterSpacing: 2
    ),
    );
  }
}