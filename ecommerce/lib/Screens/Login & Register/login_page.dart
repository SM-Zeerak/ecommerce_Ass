import 'package:ecommerce/Screens/Home%20Screens/bottom_screen.dart';
import 'package:ecommerce/Screens/Login%20&%20Register/signup_page.dart';
import 'package:ecommerce/components/email_textfield.dart';
import 'package:ecommerce/components/login_button.dart';
import 'package:ecommerce/components/pass_textfield.dart';
import 'package:ecommerce/components/sign_phone.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController _email = TextEditingController();
  TextEditingController _pass = TextEditingController();

 Future Login() async{
  try {
  final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
    email: _email.text,
    password: _pass.text
  );
} on FirebaseAuthException catch (e) {
  if (e.code == 'user-not-found') {
    print('No user found for that email.');
  } else if (e.code == 'wrong-password') {
    print('Wrong password provided for that user.');
  }
}
 }

 

  @override
  Widget build(BuildContext context) {
    
   
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
               width: 150,
              child: Image(image: AssetImage('assets/images/Vector.png',),color: Colors.red,fit: BoxFit.cover,)),
            SizedBox(height: 20,),
            Container(
              width: 330,
              height: 400,
              decoration: 
              BoxDecoration(borderRadius: BorderRadius.circular(20),
              border: Border.all(
                width: 2,
                color: Colors.grey
              )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                
                children: [
                  email_textfield(email: _email),
                  SizedBox(height: 15,),
                 pass_textfield(pass: _pass),
                  SizedBox(height: 10,),
        login_buttons(
          email: _email, 
          pass: _pass, 
          text: 'Login', press: () { 
    
        FirebaseAuth.instance.signInWithEmailAndPassword(email: _email.text, password: _pass.text).then((value) { 
        Navigator.push(context, 
        MaterialPageRoute(builder: ((context) => BottomNav()))
        );}); },),
               SizedBox(height: 10,),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text("------------",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.grey,)),
                   Text('  OR  ',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.grey)),
                    Text("------------",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.grey)),
                 ],
               ),
               SizedBox(height: 15,),
               sign_phone(
                text: 'Login with Phone',),
               SizedBox(height: 20,),
               Container(
                width: 200,
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(width: 1,color: Colors.grey))
                ),
                child: FlatButton(
                color: Colors.transparent,
                splashColor: Colors.black26,
                onPressed: () {
                  Navigator.push(context, 
              MaterialPageRoute(builder: ((context) => SignupPage())));},
                child: Text(
                  'Create account',
                  style: TextStyle(color: Colors.grey,fontSize: 18),
                ),
              ),
               )
               ]),
            ),
            SizedBox(height: 15,),
          ]),
      ),
    );
  }
}







