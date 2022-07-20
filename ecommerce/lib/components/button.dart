import 'package:flutter/material.dart';

class ButtonSelect extends StatelessWidget {

  final String text;
  final VoidCallback? press;
  final Color? color;
  final Color? textcolor;
  final String? size;
  final double? width;
  final double? height;
  final EdgeInsets? margin;
  final EdgeInsets? buttonmargin;
  final BorderRadius radius;

  const ButtonSelect({
    Key? key, 
    required this.text, 
    this.press, 
     this.color, 
    this.textcolor,
    this.size, 
    this.width, 
    this.height, 
    this.margin, 
    this.buttonmargin, required this.radius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: width,
      height: height,
      child: ClipRRect(
        borderRadius: radius,
        child: FlatButton(
          padding: buttonmargin,
          color: color,
          onPressed: (){press;
   },
           child: Text(
             text,
              style: TextStyle(color: textcolor,
              fontWeight: FontWeight.bold,
              fontSize: 18),)),
      ),
    
    );
  }
}
