import 'package:flutter/material.dart';

class NoteList extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
            children: <Widget>[
              Text('SlickBook')
            ],
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
              },
            ),
          ]),
      body: Container(),
    );
  }
}