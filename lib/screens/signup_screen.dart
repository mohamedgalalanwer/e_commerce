import 'package:e_commerce_app/Widgets/costum_textfiled.dart';
import 'package:e_commerce_app/screens/login_screen.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

import '../Widgets/custom_logo.dart';

class SignUpScreen extends StatelessWidget {
  final GlobalKey<FormState> _SignUpKey = GlobalKey<FormState>();
  static String id = 'SignUpScreen';

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: KMainColor,
      body: Form(
        key: _SignUpKey,
        child: ListView(
          children: [
            CustomLogo(),
            SizedBox(
              height: height * .1,
            ),
            CustomTextField(
              hint: 'Enter Your Name !',
              icon: Icons.perm_identity,
            ),
            SizedBox(
              height: height * .02,
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

                  if (_SignUpKey.currentState.validate()) {

                    //do somthing
                  }
                },
                child: Text(
                  'Sign Up',
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
                  'Do have an account ? ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, LoginScreen.id);
                  },
                  child: Text(
                    'Login ',
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
