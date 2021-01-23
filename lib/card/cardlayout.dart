import 'package:flutter/material.dart';

class Cardlayout extends StatefulWidget {
  @override
  _CardlayoutState createState() => _CardlayoutState();
}

class _CardlayoutState extends State<Cardlayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.purpleAccent, Colors.yellow],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)),
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.8,
              child: Card(
                elevation: 5,
                child: Stack(
                  children: [
                    Opacity(
                      opacity: 0.7,
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://www.toptal.com/designers/subtlepatterns/patterns/memphis-mini.png"),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.35,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://cdn.pixabay.com/photo/2018/01/20/08/33/sunset-3094078_960_720.jpg"),
                              fit: BoxFit.cover)),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
