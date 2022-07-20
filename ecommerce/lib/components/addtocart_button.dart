import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AddToCartButton extends StatelessWidget {
 final String text;
  final VoidCallback? press;
  final Color color;

   AddToCartButton({
    Key? key, 
    required this.text, 
    this.press, required this.color, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20)
      ),
      width: 140,
      height: 40,
      child: FlatButton(
        color: Colors.red,
        onPressed: press,
         child: Row(
           children: [Icon(Icons.shopping_cart,
           size: 16, color: Colors.white,),
           SizedBox(width: 10,),
             Text(
               text,
                style: TextStyle(color: Colors.white,
                fontSize: 12),),
           ],
         )),
    
    );
  }
}