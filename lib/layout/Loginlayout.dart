import 'dart:ui';

import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  double smallCircle(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;

  double bigCircle(BuildContext context) =>
      MediaQuery.of(context).size.width * 7 / 8;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: -100,
            right: -70,
            child: Container(
              width: smallCircle(context),
              height: smallCircle(context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      colors: [Colors.amberAccent, Colors.redAccent])),
            ),
          ),
          Positioned(
            top: -100,
            left: -100,
            child: Container(
              child: Center(
                child: Text(
                  "Flutter App",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
              width: bigCircle(context),
              height: bigCircle(context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      colors: [Colors.amberAccent, Colors.redAccent])),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(10, 300, 10, 15),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(4)),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email),
                            prefixText: "Email",
                            prefixStyle: TextStyle(
                              color: Colors.green,
                            ),
                            border: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.red))),
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.vpn_key),
                            prefixText: "Password",
                            prefixStyle: TextStyle(
                              color: Colors.green,
                            ),
                            border: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.red))),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10),
                  child: Text(
                    "Forget Password",
                    textAlign: TextAlign.right,
                    style: TextStyle(color: Colors.amber, fontSize: 15),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      width: 100,
                      height: 40,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                        Colors.purpleAccent,
                        Colors.yellowAccent
                      ])),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {},
                          splashColor: Colors.blueAccent,
                          child: Center(
                            child: Text("Buttonku"),
                          ),
                        ),
                      ),
                    ),
                    FloatingActionButton(
                        onPressed: () {},
                        child: Image(
                            image: NetworkImage(
                                "https://pngimg.com/uploads/facebook_logos/facebook_logos_PNG19757.png")))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
