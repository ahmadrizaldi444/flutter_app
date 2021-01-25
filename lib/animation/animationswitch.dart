import 'package:flutter/material.dart';

class AnimationSwitchLayout extends StatefulWidget {
  @override
  _AnimationSwitchLayoutState createState() => _AnimationSwitchLayoutState();
}

class _AnimationSwitchLayoutState extends State<AnimationSwitchLayout> {
  bool isOn = false;
  Widget myWidget = Container(
    width: 200,
    height: 200,
    decoration: BoxDecoration(color: Colors.red),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AnimatedSwitcher(child: myWidget, duration: Duration(seconds: 1)),
            Switch(
                value: isOn,
                activeColor: Colors.lightGreen,
                inactiveTrackColor: Colors.redAccent,
                inactiveThumbColor: Colors.red[400],
                onChanged: (newValue) {
                  isOn = newValue;
                  setState(() {
                    if (isOn) {
                      myWidget = SizedBox(
                          width: 200,
                          height: 200,
                          child: Center(child: Text("Switch Animation")));
                    } else {
                      myWidget = Container(
                        width: 200,
                        height: 200,
                        decoration: BoxDecoration(color: Colors.red),
                      );
                    }
                  });
                })
          ],
        ),
      ),
    );
  }
}
