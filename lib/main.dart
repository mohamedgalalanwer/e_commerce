
import 'package:e_commerce_app/screens/login_screen.dart';
import 'package:flutter/material.dart';

main()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute:LoginScreen.id ,
      routes: {
        LoginScreen.id:(context)=>LoginScreen()
      },
    );
  }
}
