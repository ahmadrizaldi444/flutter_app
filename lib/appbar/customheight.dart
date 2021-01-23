import 'package:flutter/material.dart';

class Customheight extends StatefulWidget {
  @override
  _CustomheightState createState() => _CustomheightState();
}

class _CustomheightState extends State<Customheight> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(200),
          child: AppBar(
            backgroundColor: Colors.yellow,
            flexibleSpace: Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                alignment: Alignment.bottomRight,
                margin: EdgeInsets.all(20),
                child: Text("Appbarku"),
              ),
            ),
          )),
    );
  }
}
