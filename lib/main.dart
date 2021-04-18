
import 'file:///D:/projects/flutter%20project/e_commerce_app/lib/screens/signup_screen.dart';
import 'package:e_commerce_app/screens/login_screen.dart';
import 'package:flutter/material.dart';

main()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute:LoginScreen.id ,
      routes: {
        LoginScreen.id:(context)=>LoginScreen(),
       SignUpScreen.id:(context)=>SignUpScreen()
      },
    );
  }
}
