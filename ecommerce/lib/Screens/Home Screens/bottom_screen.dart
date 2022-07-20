import 'package:ecommerce/Screens/Product%20Screens/home_product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentIndex = 0;
  final screens = [
   HomeProduct(),
   Text('data1'),
   Text('data2'),
   Text('data3'),
  ];


  @override
  Widget build(BuildContext context) => Scaffold(
      
      body: screens[currentIndex],
      bottomNavigationBar:SizedBox( height: 70,child:  BottomNavigationBar(
        
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "",
            backgroundColor: Colors.white
          ),
           const BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: "",
            backgroundColor: Colors.white
          ),
           const BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            label: "",
            backgroundColor: Colors.white
          ),
           const BottomNavigationBarItem(
            icon: Icon(Icons.add_outlined),
            label: "",
            backgroundColor: Colors.white
          ),
        ],
      ),
   ) );
    
  }
