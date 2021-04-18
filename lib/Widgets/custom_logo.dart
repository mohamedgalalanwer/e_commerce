
import 'package:flutter/material.dart';

class CustomLogo extends StatelessWidget {
  const CustomLogo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
