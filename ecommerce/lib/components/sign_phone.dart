import 'package:flutter/material.dart';

class sign_phone extends StatelessWidget {

  final String text;
  final VoidCallback? press;

  const sign_phone({
    Key? key, 
    required this.text, 
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: 220,
      height: 40,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: FlatButton(
          padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 40),
          color: Color(0xffFE2550),
          onPressed: (){press;
   },
           child: Text(
             text,
              style: TextStyle(color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18),)),
      ),
    
    );
  }
}
