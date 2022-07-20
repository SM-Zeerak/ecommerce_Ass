import 'package:ecommerce/Screens/Product%20Screens/TabBar%20Tabs/WomenProduct/Products/selected_product.dart';
import 'package:ecommerce/Screens/Product%20Screens/TabBar%20Tabs/components/product_container.dart';
import 'package:flutter/material.dart';

class WomenProduct extends StatelessWidget {
  const WomenProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.grey,
      child: Column(
        children: [
          SizedBox(height: 20,),
          InkWell(
            onTap: (() {
               Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SelectedProducts(),
                              ),
                            );
            }),
            child: product_container(
              size: size, 
              paragraph: 'If you are looking for the latest and the most stylish Pakistan lawn collection 2018 with chiffon dupatta, you have come at the right place as Alkaram has brought fully embroidered lawn suits with chiffon and sleeves in its wide range of stitched and unstitched lawn suits.', 
              pname: 'Sandy Williams', 
              pname1: 'Freelance Tailor', 
              pimage: AssetImage('assets/images/avatar2.png',),
               image1: 'assets/products/p1(1).png' ,
            image2: 'assets/products/p1(2).png' ,
            image3: 'assets/products/p1(3).png' ,
            image4: 'assets/products/p1(4).png' ,
            image5: 'assets/products/p1(5).png' ,
              ),
          ),
          SizedBox(height: 20,),
          product_container(
            size: size,
            paragraph: 'If you are looking for the latest and the most stylish Pakistan lawn collection 2018 with chiffon dupatta, you have come at the right place as Alkaram has brought fully embroidered lawn suits with chiffon and sleeves in its wide range of stitched and unstitched lawn suits.', 
            pname: 'Alero Samuel', 
            pname1: 'Designer at toki designs', 
            pimage:AssetImage('assets/images/avatar3.png'), 
            image1: 'assets/products/p1(1).png' ,
            image2: 'assets/products/p1(2).png' ,
            image3: 'assets/products/p1(3).png' ,
            image4: 'assets/products/p1(4).png' ,
            image5: 'assets/products/p1(5).png' ,),
        ]),
    );
  }
}

