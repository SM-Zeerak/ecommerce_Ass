import 'package:ecommerce/Screens/Product%20Screens/TabBar%20Tabs/components/product_images.dart';
import 'package:ecommerce/components/parahrapgh.dart';
import 'package:flutter/material.dart';

class product_container extends StatelessWidget {
  final String paragraph;
  final String pname;
  final String pname1;
  final AssetImage pimage;
  final String image1,image2,image3,image4,image5;
  const product_container({
    
    
    Key? key,
    required this.size,
    required this.paragraph,
    required this.pname,
    required this.pname1, 
    required this.pimage, 
    required this.image1, 
    required this.image2, 
    required this.image3, 
    required this.image4, 
    required this.image5,
     
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.9,
      
      decoration: BoxDecoration( 
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),

      ),
      child: Column(
        children: [
          Row(
           // crossAxisAlignment: CrossAxisAlignment.start,
           // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 8, left: 5),
                child: CircleAvatar(
                  radius: 25,
                  backgroundImage: pimage,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:  [
                    Text( pname,
                    style: TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold
                    ),),
                    Text(pname1,
                    style: TextStyle(
                      fontSize: 14,
                    ),)
                  ],
                ),
              ),
              //SizedBox(width: size.width * 0.15),
              Container(
                
                
                margin: EdgeInsets.only(top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  
                  children: [
                    Icon(Icons.favorite, color: Colors.red, size: 30,),
                Text('  23k',
                style: TextStyle(
                  color: Colors.grey
                ),)
                  ],
                )),
                
            ],
          ),
          Container(
            padding: EdgeInsets.all(10),
      child: paragarh(paragraph: paragraph),
    ),
    product_images(
      image1: image1, 
      image2: image2, 
      image3: image3, 
      image4: image4, 
      image5: image5),
    Container(
      padding: EdgeInsets.only(left: 10),
      child: Row(
        children: [
            Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: 100,
      height: 35,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xffFE2550)
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Center(
    child: Text('#Summer',style: 
    TextStyle(
      color: Colors.white,
      fontSize: 16
    ),),
        )
      ),
    
         ),
         SizedBox(width: 10,),
         Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: 100,
      height: 35,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xffFE2550)
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Center(
    child: Text('#Purple',style: 
    TextStyle(
      color: Colors.white,
      fontSize: 16
    ),),
        )
      ),
    
         ),
         SizedBox(width: 50,),
      Container(
        child: Icon(Icons.share,color: Colors.grey,),
      ),
      Container(
        child: Text('1.2k',
        style: TextStyle(
    fontSize: 18,
    color: Colors.grey,
    fontWeight: FontWeight.bold
        ),),
      )
         
        ],
      ),
    )
        ],
      ),
    );
  }
}

