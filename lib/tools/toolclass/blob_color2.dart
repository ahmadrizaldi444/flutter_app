import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

enum ColorEvent { toamber, to_lightBlue }

class ColorBlob2 extends Bloc<ColorEvent, Color> {
  @override
  // TODO: implement initialState
  Color get initialState => Colors.amber;

  @override
  Stream<Color> mapEventToState(ColorEvent event) async* {
    yield (event == ColorEvent.toamber) ? Colors.amber : Colors.lightBlue;
  }
}
