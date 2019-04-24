import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:clippy_flutter/diagonal.dart';
import 'package:note_book/shared/flat_buttons.dart';

class LoginForm extends StatefulWidget {
  @override
  LoginFormState createState() {
    return new LoginFormState();
  }
}

class LoginFormState extends State<LoginForm> {
  static final double containerHeight = 300.0;
  double clipHeight = containerHeight * 0.35;
  DiagonalPosition position = DiagonalPosition.BOTTOM_LEFT;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: <Widget>[
            Stack(
              overflow: Overflow.visible,
              children: <Widget>[
                Diagonal(
                  position: position,
                  clipHeight: clipHeight,
                  child: Container(
                    color: Colors.blue,
                    height: containerHeight,
                  ),
                ),
                Positioned(
                    bottom: 0.0,
                    right: 0.0,
                    left: 0.0,
                    top: 0.0,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Let\'s put it in writings',
                            style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w300,
                                letterSpacing: 1.5),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 16.0),
                          Text(
                            'SlickBook',
                            style: TextStyle(
                                fontSize: 34.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    )),
                Positioned(
                  bottom: -60.0,
                  right: 0.0,
                  left: 0.0,
                  height: 140.0,
                  child: AspectRatio(
                    aspectRatio: 300 / 145,
                    child: Image.asset(
                      'assets/car.png',
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 60.0),
            Container(
              child: Center(
                  child: Row(
                    children: <Widget>[
                      DangerOutlineFlatButton(
                        width: 250.0,
                        height: 20.0,
                        padding: 20.0,
                        icon: EvaIcons.google,
                        label: 'Sign in with Google',
                      ),
                      SizedBox(width: 2.0,),
                      PrimaryFlatButton(
//                        width: 250.0,
//                        height: 20.0,
//                        padding: 20.0,
                        icon: EvaIcons.unlock,
                        label: 'Sign in',
                      ),
                    ],
                  )
              ),
            )
          ],
        ));
  }
}