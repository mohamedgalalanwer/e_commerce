import 'package:e_commerce_app/Widgets/costum_textfiled.dart';
import 'package:e_commerce_app/Widgets/custom_logo.dart';
import 'file:///D:/projects/flutter%20project/e_commerce_app/lib/screens/signup_screen.dart';
import 'package:e_commerce_app/constants.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static String id = 'LoginScreen';
  final GlobalKey<FormState> _globalKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: KMainColor,
      body: Form(
        key: _globalKey,
        child: ListView(
          children: [
            CustomLogo(),
            SizedBox(
              height: height * .1,
            ),
            CustomTextField(
              hint: 'Enter Your Email !',
              icon: Icons.email,
            ),
            SizedBox(
              height: height * .02,
            ),
            CustomTextField(
              hint: 'Enter Your Password !',
              icon: Icons.lock,
            ),
            SizedBox(
              height: height * .02,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 120),
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                onPressed: () {
                  if (_globalKey.currentState.validate()) {
                    //do somthing
                  }
                },
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: height * .05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don\'t have an account ? ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                GestureDetector(
                  onTap: (){
                   Navigator.pushNamed(context, SignUpScreen.id);
                  },
                  child: Text(
                    'Sign up ',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
