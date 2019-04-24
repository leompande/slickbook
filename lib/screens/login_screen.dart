import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:clippy_flutter/diagonal.dart';
import 'package:note_book/shared/constants.dart';
import 'package:note_book/shared/flat_buttons.dart';

class LoginScreen extends StatefulWidget {
  @override
  LoginScreenState createState() {
    return new LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
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
//                  clipShadows: [ClipShadow(color: Colors.black)],
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
                        APP_MOTTO,
                        style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            letterSpacing: 1.5),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 16.0),
                      Text(
                        MAIN_TITLE,
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
              child: Column(
            children: <Widget>[
              DangerOutlineFlatButton(
                width: 250.0,
                height: 65.0,
                padding: 20.0,
                icon: EvaIcons.google,
                label: SIGN_IN_WITH_GOOGLE,
                onTap: () {
//                  Navigator.pushNamed(context, to_note_list);
                },
              ),
              SizedBox(
                height: 10.0,
              ),
              PrimaryFlatButton(
                icon: EvaIcons.unlock,
                label: SIGN_IN,
              ),
            ],
          )),
        )
      ],
    ));
  }
}
