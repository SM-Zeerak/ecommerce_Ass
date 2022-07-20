import 'package:ecommerce/components/addtocart_button.dart';
import 'package:ecommerce/components/parahrapgh.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InfoProduct extends StatelessWidget {
  const InfoProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 10,right: 10,top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('MATERIALS',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
                fontSize: 16
              ),),
              SizedBox(height: 10,),
              paragarh(paragraph: 'AS SEEN IN REDBOOK! Youll be primed and ready in the Perfect Situation Purple Long Sleeve Shift Dress when everything starts falling into place! This woven poly dress has a casual shift shape, accented by a rounded neckline.')
             ,
            ],
          ),
        ),
        SizedBox(height: 25,),
        Container(
          margin: EdgeInsets.only(left: 10,right: 10,top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('WASH INSTRUCTION',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
                fontSize: 16
              ),),
              SizedBox(height: 10,),
              paragarh(paragraph: 'AS SEEN IN REDBOOK! Youll be primed and ready in the Perfect Situation Purple Long Sleeve Shift Dress when everything starts falling into place! This woven poly dress has a casual shift shape, accented by a rounded neckline.'),
              
            ],
          ),
        ),
        SizedBox(height: 25,),
        Container(
          margin: EdgeInsets.only(left: 200),
          child: AddToCartButton(
            text: "ADD TO CART", color: Colors.red,
          ),
        ) 
      ],
    );
  }
}