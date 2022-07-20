import 'package:ecommerce/Screens/Product%20Screens/TabBar%20Tabs/WomenProduct/women_product.dart';
import 'package:flutter/material.dart';

class HomeProduct extends StatelessWidget {
  const HomeProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
        toolbarHeight: 130,
        backgroundColor: Colors.white12,
        title: Stack(children: [
        Padding(
          padding: const EdgeInsets.only(top: 18),
          child: Column(
            children: [
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Container(
                        decoration: BoxDecoration(
                          color: Color(0xffF0F0F0),
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: const SizedBox(
                          width: 250,
                          height: 45,
                          child: TextField(
      decoration: InputDecoration(
        prefixIcon: Padding(
          padding: EdgeInsets.symmetric(vertical:8),
          child: Icon(Icons.search_outlined,color: Color(0xff909090),),
          ),
         suffixIcon: Icon(Icons.close),
        hintText: "Search",
        hintStyle: TextStyle(fontSize: 14.0, color: Color(0xff909090),),
        border: InputBorder.none,
        ), ),
                        ),
                      ),
                      SizedBox(width: 10,),
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/images/avatar.png'),
            )
                 ]),
               SizedBox(height: 10,),
                 Column(
                  children: [
                     Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      child: const TabBar(
                        labelColor: Colors.black,
                        unselectedLabelColor: Colors.white,
                                 tabs: [
                                Tab(text: "WOMEN",),
                                Tab(text: "MEN",),
                                Tab(text: "CHILDREN",),],
                                labelStyle: TextStyle(fontSize:15 ,fontWeight: FontWeight.bold)),
                    ),
                  ])
            ] ),
        ),
      ] ) ),
      body: Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
        Container(
          height: size.height,
          child: TabBarView(
            children: [
              ListView.builder(
                itemCount: 1,
                itemBuilder:(context, index) => WomenProduct(), ),
              Text('Men'),
              Text('Child')
            ]),
        ),
     ] ),
      )));
  }
}