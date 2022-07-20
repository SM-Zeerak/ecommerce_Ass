
import 'package:ecommerce/Screens/Login%20&%20Register/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/main.png'),
        fit: BoxFit.cover)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
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
                  Navigator.push(context, 
              MaterialPageRoute(builder: ((context) => LoginPage())));
                },
                child: Text(
                  'LOGIN',
                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),
                ),
              ),
       ),
       SizedBox(height: 10,),
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
                  
                },
                child: Text(
                  'REGISTER',
                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),
                ),
              ),
       ),
       SizedBox(height: 10,),
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
                  
                },
                
                child: Row(
                  children: [
                    Container(
                      width: 25,
                      child: Image(image: AssetImage('assets/images/googleicon.png'))),
                      SizedBox(width: 10,),
                    Text(
                      'Continue with Google',
                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                  ],
                ),
              ),
       ),
       SizedBox(height: 70,)
        ],
      ),
      );
  }
}