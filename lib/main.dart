import 'package:denme/Login/login.dart';
import 'package:denme/Login/loginC.dart';
import 'package:denme/Login/register.dart';

import 'anaSayfa.dart';
import 'package:flutter/material.dart';

void main() => runApp((LoginPage()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: Scaffold(),
    );
  }
}
