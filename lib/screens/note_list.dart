import 'package:flutter/material.dart';
import 'package:note_book/shared/constants.dart';

class NoteList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
            children: <Widget>[Text('${MAIN_TITLE}: ${LIST_NOTE_TITLE}')],
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {},
            ),
          ]),
      body: Container(),
    );
  }
}
