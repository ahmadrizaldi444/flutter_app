import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_application_2/tools/toolclass/blob_color2.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_application_2/tools/toolclass/hydrared_bloc.dart';

import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:bloc/bloc.dart';

class HydratedBlocs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ColorBlocHydrated>(
        builder: (context) => ColorBlocHydrated(), child: MyPage());
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(onPressed: () {}, backgroundColor: Colors.amber),
          SizedBox(
            width: 10,
          ),
          FloatingActionButton(
              onPressed: () {}, backgroundColor: Colors.lightBlue),
        ],
      ),
      appBar: AppBar(
        title: Text("dasdasd"),
      ),
      body: Center(
          child: Container(
        width: 100,
        height: 100,
        color: Colors.amber,
      )),
    );
  }
}
