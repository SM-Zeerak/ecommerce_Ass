import 'package:flutter/material.dart';

class email_textfield extends StatelessWidget {
  const email_textfield({
    Key? key,
    required TextEditingController email,
  }) : _email = email, super(key: key);

  final TextEditingController _email;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffF0F0F0),
        borderRadius: BorderRadius.circular(20)
      ),
      child:  SizedBox(
        width: 250,
        height: 45,
        child: TextField(
          controller: _email,
     //textAlign: TextAlign.center,
      decoration: InputDecoration(
        prefixIcon: Padding(
          padding: EdgeInsets.symmetric(vertical:8),
          child: Icon(Icons.person_outline,color: Color(0xff909090),),
         
          ),
       
         
        hintText: "               Your Email",
        hintStyle: TextStyle(fontSize: 14.0, color: Color(0xff909090),),
        border: InputBorder.none,
        ), ),
      ),
    );
  }
}