import 'package:flutter/material.dart';
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
        },
        title: 'SlickBook',
        theme: ThemeData(primarySwatch: Colors.blue));
  }
}
