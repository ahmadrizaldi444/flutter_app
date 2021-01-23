import 'package:flutter/material.dart';
import 'package:flutter_application_2/appbar/customheight.dart';
import 'package:flutter_application_2/hero/herolayout.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Customheight());
  }
}
