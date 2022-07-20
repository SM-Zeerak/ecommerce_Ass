


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SlideSecond extends StatelessWidget {
  const SlideSecond({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/slide2.png'),
        fit: BoxFit.cover)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
            Container(
              margin: EdgeInsets.only(left: 25),
              child: Row(
                
                children: [
                  Text('No',style: TextStyle(fontSize: 25,color: Colors.white,decoration: TextDecoration.none),),
                  Text('2',style: TextStyle(fontSize: 50,color: Colors.white,decoration: TextDecoration.none),),
                ],
              ),
            ),
            
         Container(
          margin: EdgeInsets.only(right: 220),
          child: Text('Featured',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Color(0xffFE2550),decoration: TextDecoration.none),)),
          Container(
            margin: EdgeInsets.only(right: 70),
            child: Text('Tailored ',style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.white,decoration: TextDecoration.none),)),
            Container(
            margin: EdgeInsets.only(left: 25),
            child: RichText(
              text: const TextSpan(
                style: TextStyle(
      fontSize: 14.0,
      color: Colors.black,
    ),
    children: <TextSpan>[
      TextSpan(text: 'Jimmy Chuka', style: 
      TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold)),
      TextSpan(text: ' exploring new / spring sweater collection', 
      style: TextStyle(fontSize: 20,color: Colors.white)),
              ]),
            )
            
            ),
       SizedBox(height: 30,),
       Container(
        width: 280,
        height: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.white,
            width: 2
          )
        ),
         child: FlatButton(
                color: Colors.transparent,
                splashColor: Colors.black26,
                onPressed: () {
                  print('done');
                },
                child: Text(
                  'Shop Now',
                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),
                ),
              ),
       ),
       SizedBox(height: 50,)
           ],
      ),
    );
  }
}