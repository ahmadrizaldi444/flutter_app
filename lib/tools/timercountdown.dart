import 'dart:async';

import 'package:flutter/material.dart';

class TimerExample extends StatefulWidget {
  TimerExample({Key key}) : super(key: key);

  @override
  _TimerExampleState createState() => _TimerExampleState();
}

class _TimerExampleState extends State<TimerExample> {
  bool isStop = true;
  int count = 0;
  bool isBlack = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Countdown Example"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              count.toString(),
              style: TextStyle(color: (isBlack) ? Colors.black : Colors.red),
            ),
            RaisedButton(
              onPressed: () {
                Timer.run(() {
                  setState(() {
                    isBlack = !isBlack;
                  });
                });
              },
              child: Text("Ubah Warna Langsung"),
            ),
            RaisedButton(
              onPressed: () {
                Timer.periodic(Duration(seconds: 5), (timer) {
                  setState(() {
                    isBlack = !isBlack;
                  });
                });
              },
              child: Text("Ubah Warna 5 Detik"),
            ),
            RaisedButton(
              onPressed: () {
                Timer.periodic(Duration(seconds: 1), (timer) {
                  isStop = false;
                  if (isStop) timer.cancel();
                  count++;
                  setState(() {});
                });
              },
              child: Text("Start Timer"),
            ),
            RaisedButton(
              onPressed: () {
                isStop = true;
              },
              child: Text("Stop Timer"),
            ),
          ],
        ),
      ),
    );
  }
}
