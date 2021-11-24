import 'package:flutter/material.dart';
import 'package:flutter_application_1/finger.dart';
import 'package:flutter_application_1/home.dart';
import 'login.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/2',
      routes: {
        '/': (context) => HomePage(),
        '/2': (context) => LoginApp(),
        '/3': (context) => FingerApp(),
      },
    ),
  );
}
