import 'package:flutter/material.dart';
import 'package:note_book/screens/login_form.dart';
import 'package:note_book/screens/note_list.dart';
import 'package:note_book/screens/note_update.dart';
import 'package:note_book/screens/note_add.dart';
import './screens/login_screen.dart';

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => LoginScreen(),
          '/login_form': (context) => LoginForm(),
          '/note_list': (context) => NoteList(),
          '/note_add': (context) => NoteAdd(),
          '/note_update': (context) => NoteUpdate()
        },
        title: 'SlickBook',
        theme: ThemeData(primarySwatch: Colors.blue));
  }
}
