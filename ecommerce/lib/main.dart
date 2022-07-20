


import 'package:ecommerce/Screens/Welcome%20Screens/slide_first.dart';
import 'package:ecommerce/Screens/Welcome%20Screens/slide_second.dart';
import 'package:ecommerce/Screens/Welcome%20Screens/slide_third.dart';
import 'package:ecommerce/Screens/Welcome%20Screens/welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PageView(
        children: [
          Welcome(),
          SlideFirst(),
          SlideSecond(),
          SlideThird()
        ],
      )
    );
  }
}