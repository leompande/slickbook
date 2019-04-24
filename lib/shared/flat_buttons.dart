import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

/**
 * Solid Flat buttons
 */
class PrimaryFlatButton extends StatelessWidget {
  IconData icon;
  String label;
  Color textColor = Colors.white;
  Color buttonColor = Colors.blue;
  Function() onTap;

  PrimaryFlatButton({this.icon, this.label, this.onTap});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: () {},
      child: FlatButton(
        icon: icon,
        label: 'Sign in',
        textColor: textColor,
        buttonColor: buttonColor,
      ),
    );
  }
}

class DangerFlatButton extends StatelessWidget {
  IconData icon;
  String label;
  Color textColor = Colors.white;
  Color buttonColor = Colors.red;
  Function() onTap;

  DangerFlatButton({this.icon, this.label, this.onTap});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: ()=> onTap(),
      child: FlatOutlineButton(
        icon: icon,
        label: label,
        textColor: textColor,
        buttonColor: buttonColor,
      ),
    );
  }
}


class WarningFlatButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: () {},
      child: FlatOutlineButton(
        icon: EvaIcons.google,
        label: 'Sign in with Google',
        textColor: Colors.white,
        buttonColor: Colors.red,
      ),
    );
  }
}

class FlatButton extends StatelessWidget {
  IconData icon;
  String label;
  Color textColor;
  Color buttonColor;

  FlatButton({this.icon, this.label, this.textColor, this.buttonColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250.0,
      color: buttonColor,
      padding: EdgeInsets.all(20.0),
      child: Row(
        children: <Widget>[
          Icon(
            icon,
            color: textColor,
          ),
          SizedBox(
            width: 10.0,
          ),
          Text(
            '${label}',
            style: TextStyle(
                color: textColor, fontWeight: FontWeight.bold, fontSize: 17.0),
          )
        ],
      ),
    );
  }
}

/**
 *
 * Outline flat buttons
 */

class DangerOutlineFlatButton extends StatelessWidget {
  IconData icon;
  String label;
  Color textColor = Colors.red;
  Color buttonColor = Colors.red;
  Function() onTap;

  DangerOutlineFlatButton({this.icon, this.label,this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=> onTap(),
      child: FlatOutlineButton(
        icon: icon,
        label: label,
        textColor: textColor,
        buttonColor: buttonColor,
      ),
    );
  }
}


class FlatOutlineButton extends StatelessWidget {
  IconData icon;
  String label;
  Color textColor;
  Color buttonColor;

  FlatOutlineButton({this.icon, this.label, this.textColor, this.buttonColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250.0,
      decoration: BoxDecoration(
        border: Border.all(color: buttonColor, width: 2.0),
//        color: Colors.white,
      ),
      padding: EdgeInsets.all(20.0),
      child: Row(
        children: <Widget>[
          Icon(
            icon,
            color: buttonColor,
          ),
          SizedBox(
            width: 10.0,
          ),
          Text(
            '${label}',
            style: TextStyle(
                color: buttonColor, fontWeight: FontWeight.bold, fontSize: 17.0),
          )
        ],
      ),
    );
  }
}
