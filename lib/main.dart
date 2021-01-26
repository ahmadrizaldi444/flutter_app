import 'package:flutter/material.dart';
import 'package:flutter_application_2/Api/getlist.dart';
import 'package:flutter_application_2/Api/getsingle.dart';
import 'package:flutter_application_2/Api/postapi.dart';
import 'package:flutter_application_2/animation/animationPadding.dart';
import 'package:flutter_application_2/animation/animationswitch.dart';
import 'package:flutter_application_2/appbar/customheight.dart';
import 'package:flutter_application_2/card/cardlayout.dart';
import 'package:flutter_application_2/hero/herolayout.dart';
import 'package:flutter_application_2/image/shadermaskgradient.dart';
import 'package:flutter_application_2/layout/Loginlayout.dart';
import 'package:flutter_application_2/layout/productcard.dart';
import 'package:flutter_application_2/tools/MultipleProviderManagement.dart';
import 'package:flutter_application_2/tools/ProviderStateManagement.dart';
import 'package:flutter_application_2/tools/sharedpref.dart';
import 'package:flutter_application_2/tools/timercountdown.dart';

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
    return MaterialApp(home: ProductCard());
  }
}
