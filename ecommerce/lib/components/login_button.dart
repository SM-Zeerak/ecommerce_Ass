
import 'package:flutter/material.dart';

class login_buttons extends StatelessWidget {

  final String text;
  final VoidCallback? press;
  

  const login_buttons({
    Key? key,
    required TextEditingController email,
    required TextEditingController pass, 
    required this.text, 
    required this.press,
  }) : _email = email, _pass = pass, super(key: key);

  final TextEditingController _email;
  final TextEditingController _pass;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: 150,
      height: 40,
      child: ClipRRect(
    borderRadius: BorderRadius.circular(5),
    child: FlatButton(
      padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 40),
      color: Color(0xffFE2550),
      onPressed: press,
       child: Text(
     text,
      style: TextStyle(color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 18),)),
      ),
    
       );
  }
}
