import 'package:flutter/material.dart';
import 'package:flutter_application_2/Api/getsingle.dart';
import 'package:flutter_application_2/Api/postapi.dart';
import 'package:flutter_application_2/appbar/customheight.dart';
import 'package:flutter_application_2/card/cardlayout.dart';
import 'package:flutter_application_2/hero/herolayout.dart';
import 'package:flutter_application_2/image/shadermaskgradient.dart';
import 'package:flutter_application_2/layout/Loginlayout.dart';

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
    return MaterialApp(home: GetSingle());
  }
}
