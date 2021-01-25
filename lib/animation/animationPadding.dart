import 'package:flutter/material.dart';

class PaddingAnimation extends StatefulWidget {
  @override
  _PaddingAnimationState createState() => _PaddingAnimationState();
}

class _PaddingAnimationState extends State<PaddingAnimation> {
  double padding = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(
              flex: 1,
              child: Row(
                children: [
                  Flexible(
                      flex: 1,
                      child: AnimatedPadding(
                        duration: Duration(seconds: 1),
                        padding: EdgeInsets.all(padding),
                        child: GestureDetector(
                          onTap: () {
                            padding = 20;
                            setState(() {});
                          },
                          child: Container(
                            color: Colors.red,
                          ),
                        ),
                      )),
                  Flexible(
                      flex: 1,
                      child: AnimatedPadding(
                        duration: Duration(seconds: 1),
                        padding: EdgeInsets.all(padding),
                        child: GestureDetector(
                          onTap: () {
                            padding = 0;
                            setState(() {});
                          },
                          child: Container(
                            color: Colors.blue,
                          ),
                        ),
                      )),
                ],
              )),
          Flexible(
              flex: 1,
              child: Row(
                children: [
                  Flexible(
                      flex: 1,
                      child: AnimatedPadding(
                        duration: Duration(seconds: 1),
                        padding: EdgeInsets.all(padding),
                        child: Container(
                          color: Colors.green,
                        ),
                      )),
                  Flexible(
                      flex: 1,
                      child: AnimatedPadding(
                        duration: Duration(seconds: 1),
                        padding: EdgeInsets.all(padding),
                        child: Container(
                          color: Colors.yellow,
                        ),
                      )),
                ],
              ))
        ],
      ),
    );
  }
}
