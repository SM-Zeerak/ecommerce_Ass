import 'package:ecommerce/Screens/Product%20Screens/TabBar%20Tabs/components/build_sheet.dart';
import 'package:ecommerce/Screens/Product%20Screens/TabBar%20Tabs/components/color_selection.dart';
import 'package:ecommerce/Screens/Product%20Screens/TabBar%20Tabs/components/size_measurement.dart';
import 'package:ecommerce/components/addtocart_button.dart';
import 'package:ecommerce/components/button.dart';
import 'package:ecommerce/components/sign_phone.dart';
import 'package:ecommerce/components/text.dart';
import 'package:flutter/material.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class Measurements extends StatefulWidget {
  const Measurements({Key? key}) : super(key: key);

  @override
  State<Measurements> createState() => _MeasurementsState();
}

class _MeasurementsState extends State<Measurements> {
 Future showSheet() => showSlidingBottomSheet(context,
      builder: (context) => SlidingSheetDialog(
            snapSpec: SnapSpec(snappings: [20, 0.7]),
            builder: buildsheet,
          ));
 
  @override
  Widget build(BuildContext context) {
      return Container(
        margin: EdgeInsets.only(top: 20,left: 10,right: 10),
        padding: EdgeInsets.all(20),
          child: Column(
            
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    size_measurement(
                      size: '43', text: 'WAIST',),
                    size_measurement(
                      size: '34', text: 'LENGTH',),
                    size_measurement(
                      size: '76', text: 'BREADTH',),
                  ],
                ),
              ),
              SizedBox(height: 50,),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
                TextCall(text: 'Color :', size: 18),
                 ColorSelection(color: Colors.purple,),
                 ColorSelection(color: Colors.blueAccent,),
             ColorSelection(color: Colors.black26,),
             TextCall(text: "Qty v", size: 16)
               ],
             ),
             SizedBox(height: 20,),
             ElevatedButton(onPressed: () {
              showSheet();
            }, 
            child: Text("Select Product")),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextCall(text: 'Total ', size: 10,fontcolor: Colors.grey,),
                    TextCall(
                  text: '\$ 25.99', 
                  size: 16,
                  weight: FontWeight.bold,
                  letterspace: 1,
                  fontcolor: Colors.red,),
                  ],
                ),
                AddToCartButton(text: "ADD TO CART", color: Colors.red,),
              ],
            )
            ],
          ),
      ) ;  
  }
}

Widget buildsheet(context, state) => Material(
        child: Container(
          color: Colors.grey.shade400,
          height: 600,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Row(
                  children: [
                    IconButton(onPressed: (){}, 
                    icon: Icon(Icons.arrow_back)),
                    Text("Specify Materials",style: TextStyle(
                      fontSize: 22
                    ),)
                  ],
                ),
              ),
            SizedBox(height: 20,),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: 
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextCall(text: "MATERIAL", size: 14, letterspace: 2, weight: FontWeight.bold,),
                  SizedBox(height: 10,),
                  TextCall(text: "Lace", size: 14, ),
                  SizedBox(height: 10,),
                  TextCall(text: "Ankara", size: 14,),
                  SizedBox(height: 10,),
                  TextCall(text: "Guinea", size: 14, ),
                  SizedBox(height: 10,),
                  TextCall(text: "Linen", size: 14, ),
                  SizedBox(height: 10,),
                  TextCall(text: "Silk", size: 14,),
                  SizedBox(height: 10,),
                  TextCall(text: "Wool", size: 14,),
                  SizedBox(height: 10,),
                  TextCall(text: "Cotten", size: 14,),
                ],
              )),
              SizedBox(height: 10,),
              Container(
                margin: EdgeInsets.only(left: 20),
                child: TextCall(text: "ENTER THE COLOR", size: 18, weight: FontWeight.bold,)),
SizedBox(height: 10,),
                 Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: [
                  TextCall(text: 'Color :', size: 18),
                   ColorSelection(color: Colors.purple,),
                   ColorSelection(color: Colors.blueAccent,),
               ColorSelection(color: Colors.black26,),
               TextCall(text: "Qty v", size: 16)
                 ],
               ),
               SizedBox(height: 10,),
              Container(
                margin: EdgeInsets.only(left: 20),
                child: TextCall(text: "HOW MANY YARDS", size: 18, weight: FontWeight.bold,)),
                SizedBox(height: 10,),
              Container(
                margin: EdgeInsets.only(left: 20),
                child: TextCall(text: "      5", size: 16, )),
             
              Container(
                margin: EdgeInsets.only(left: 70,top: 30),
                child: ButtonSelect(
                text: "DONE",
                textcolor: Colors.white,
                width: 250,
                height: 35,
                color: Colors.red,
                radius: BorderRadius.circular(0),))
            ],
          ),
        ),
      );