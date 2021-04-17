import 'package:e_commerce_app/Widgets/costum_textfiled.dart';
import 'package:e_commerce_app/constants.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static String id = 'LoginScreen';

  @override
  Widget build(BuildContext context) {
    double height =MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: KMainColor,
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 50),
            child: Container(
              //responsive UI
              height: MediaQuery.of(context).size.height * .2,
              child: Stack(alignment: Alignment.center, children: [
                Image(
                  image: AssetImage('images/icons/buyicon.png'),
                ),
                Positioned(
                  bottom: 0,
                  child: Text(
                    'Buy it',
                    style: TextStyle(fontSize: 25, fontFamily: 'Pacifico'),
                  ),
                )
              ]),
            ),
          ),
          SizedBox(
            height: height*.1,
          ),
          CustomTextField(hint:'Enter Your Email !',icon: Icons.email,),
          SizedBox(
            height: height*.02,
          ),
          CustomTextField(hint:'Enter Your Password !',icon: Icons.lock,),
          SizedBox(
            height: height*.02,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 120),
            child: FlatButton(
shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(20)
),
              onPressed: (){}, child:Text(
              'Login',
              style: TextStyle(
                color: Colors.white
              ),
            ),
            color:Colors.black,),
          ),
          SizedBox(
            height: height*.05,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Don\'t have an account ? ', style: TextStyle(
                color: Colors.white,
                fontSize: 16,

              ),),
              Text('Sign up ', style: TextStyle( fontSize: 16,),)
            ],
          )
        ],
      ),
    );
  }
}

