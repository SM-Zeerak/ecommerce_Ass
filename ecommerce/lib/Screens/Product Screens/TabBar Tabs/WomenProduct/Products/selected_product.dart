import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/Screens/Product%20Screens/TabBar%20Tabs/WomenProduct/Products/info.dart';
import 'package:ecommerce/Screens/Product%20Screens/TabBar%20Tabs/WomenProduct/Products/measurements.dart';
import 'package:ecommerce/components/text.dart';
import 'package:flutter/material.dart';

class SelectedProducts extends StatelessWidget {
  const SelectedProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
        return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 2,
          backgroundColor: Colors.grey,
          automaticallyImplyLeading: false,
        ),
        body: Column(
          children: <Widget>[
            FittedBox(
              child: Container(
                color: Colors.transparent,
              width: MediaQuery.of(context).size.width,
                child: CarouselSlider(
                          options: CarouselOptions(
                            enlargeCenterPage: true,
                            enableInfiniteScroll: false,
                            autoPlay: true,
                          ),
                          items:[
                            new Image(image: AssetImage('assets/products/p1(1).png'),fit: BoxFit.cover,),
                            new Image.asset('assets/products/p1(2).png', fit: BoxFit.cover,),
                            new Image.asset('assets/products/p1(3).png', fit: BoxFit.cover,),
                            new Image.asset('assets/products/p1(4).png', fit: BoxFit.cover,),
                            new Image.asset('assets/products/p1(5).png', fit: BoxFit.cover,),
                          ]),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextCall(
                  text: 'Perfect Situation Purple Long Sleeve Dress', 
                  size: 16,
                  letterspace: 1,),
                  SizedBox(height: 10,),
                  TextCall(
                  text: '\$ 25.99', 
                  size: 16,
                  weight: FontWeight.bold,
                  letterspace: 1,
                  fontcolor: Colors.red,),
                  SizedBox(height: 10,)
              ]),
            SizedBox(
              height: 50,
              child: AppBar(
                backgroundColor: Colors.white,
                bottom: TabBar(
                  unselectedLabelColor: Colors. grey,
                  labelColor: Colors.black,
                  indicatorColor: Colors.red,
                  tabs: [
                    Tab(
                      text: "INFO",
                    ),
                    Tab(
                      text: "MEASUREMENTS",
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                   ListView.builder(
                itemCount: 1,
                itemBuilder:(context, index) => InfoProduct(), ),
                 ListView.builder(
                itemCount: 1,
                itemBuilder:(context, index) => Measurements(), ),
                ],),
            ),
          ]),
      ),
    );
  }
}

