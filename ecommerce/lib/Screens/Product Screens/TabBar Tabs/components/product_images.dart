import 'package:ecommerce/Screens/Product%20Screens/TabBar%20Tabs/components/images.dart';
import 'package:flutter/material.dart';

class product_images extends StatelessWidget {
  const product_images({
    Key? key,
    required this.image1,
    required this.image2,
    required this.image3,
    required this.image4,
    required this.image5,
  }) : super(key: key);

  final String image1;
  final String image2;
  final String image3;
  final String image4;
  final String image5;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          images(image1: image1),
          Container(
            padding: EdgeInsets.all(8),
            child: Column(
              children: [
                Container(
                  width: 80,
                  child: Image.asset(image2,fit: BoxFit.cover,)
                ),
                Container(
                  padding: EdgeInsets.only(top: 8),
                  width: 80,
                  child: Image.asset(image3,fit: BoxFit.cover,)
                ),
                
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            child: Column(
              children: [
                Container(
                  width: 80,
                  child: Image.asset(image4,fit: BoxFit.cover,)
                ),
                Container(
                  padding: EdgeInsets.only(top: 8),
                  width: 80,
                  child: Image.asset(image5,fit: BoxFit.cover,)
                ),
                
              ],
            ),
          )
        ],
      ),
    );
  }
}


