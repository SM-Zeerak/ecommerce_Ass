

import 'package:ecommerce/Screens/Welcome%20Screens/slide_first.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        
        width: double.infinity,
        height: double.infinity,
        color: const Color(0xffFE2550),
      child: Stack(
        children: [
          const Center(child: Image(image: AssetImage('assets/images/Vector.png'))),
          Positioned(
            bottom: 20,
            right: 100,
            width: 200,
            height: 5,
            child: ElevatedButton(onPressed: (){
              Navigator.push(context, 
              MaterialPageRoute(builder: ((context) => SlideFirst())));
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.grey
            ), 
            child: const Text(''),),
          )
        ],
      )
      ),
    );
  }
}