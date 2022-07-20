import 'package:flutter/material.dart';

class TextCall extends StatelessWidget {

  final String text;
  final double size;
  final Color?  fontcolor;
  final double? letterspace;
  final FontWeight? weight;
  
  
   TextCall({
    Key? key, 
    required this.text, 
    required this.size, 
     this.fontcolor, 
     this.letterspace, 
      this.weight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,style: 
    TextStyle(
      fontSize: size,
      fontWeight: weight,
      letterSpacing: letterspace,
      color: fontcolor,
    ),);
  }
}