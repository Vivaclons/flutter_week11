import 'package:flutter/material.dart';
import 'package:flutter_application_1/finger.dart';
import 'package:flutter_application_1/home.dart';
import 'location.dart';
import 'login.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/4': (context) => MapSample(),
        '/': (context) => HomePage(),
        '/2': (context) => LoginApp(),
        '/3': (context) => FingerApp(),
      },
    ),
  );
}
