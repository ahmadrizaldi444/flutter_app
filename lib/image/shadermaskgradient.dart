import 'package:flutter/material.dart';

class ShadermaskGradient extends StatefulWidget {
  @override
  _ShadermaskGradientState createState() => _ShadermaskGradientState();
}

class _ShadermaskGradientState extends State<ShadermaskGradient> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ShaderMask(
        shaderCallback: (rectangle) {
          return LinearGradient(
                  colors: [Colors.black, Colors.transparent],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)
              .createShader(
                  Rect.fromLTRB(0, 0, rectangle.width, rectangle.height));
        },
        blendMode: BlendMode.dstIn,
        child: Center(
            child: Image(
                width: 300,
                image: NetworkImage(
                    "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/sunset-quotes-21-1586531574.jpg"))),
      ),
    );
  }
}
