


import 'package:flutter/material.dart';

class pass_textfield extends StatelessWidget {
  const pass_textfield({
    Key? key,
    required TextEditingController pass,
  }) : _pass = pass, super(key: key);

  final TextEditingController _pass;

  @override
  Widget build(BuildContext context) {
    return Container(
                decoration: BoxDecoration(
                  color: Color(0xffF0F0F0),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: SizedBox(
                  width: 250,
                  height: 45,
                  child: TextField(
                    controller: _pass,
                    obscureText: true,
     //textAlign: TextAlign.center,
      decoration: InputDecoration(
    prefixIcon: Padding(
      padding: EdgeInsets.symmetric(vertical:8),
      child: Icon(Icons.lock_outline,color: Color(0xff909090),),
      ),
    hintText: "               Password",
    hintStyle: TextStyle(fontSize: 14.0, color: Color(0xff909090),),
    suffixIcon: Icon(Icons.visibility_outlined,color: Color(0xff909090)),
    border: InputBorder.none,
    ), ),
                ),
              );
  }
}