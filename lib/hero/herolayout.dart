import 'package:flutter/material.dart';

class HeroLay extends StatefulWidget {
  @override
  _HeroLayState createState() => _HeroLayState();
}

class _HeroLayState extends State<HeroLay> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Layout2bro();
            }));
          },
          child: Hero(
            tag: "image",
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Container(
                width: 200,
                height: 200,
                child: Image(
                  image: AssetImage("assets/ss1.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Layout2bro extends StatefulWidget {
  @override
  _Layout2broState createState() => _Layout2broState();
}

class _Layout2broState extends State<Layout2bro> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("App2"),
        ),
        body: Hero(
          tag: "image",
          child: ClipRRect(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              child: Image(
                image: AssetImage("assets/ss1.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
