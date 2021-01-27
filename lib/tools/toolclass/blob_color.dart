import 'dart:async';

import 'package:flutter/material.dart';

enum ColorEvent { toAmber, toLightBlue }

class ColorBlob {
  Color _color = Colors.amber;

  StreamController<ColorEvent> _eventController =
      StreamController<ColorEvent>();
  StreamSink<ColorEvent> get eventSink => _eventController.sink;

  StreamController<Color> _stateController = StreamController<Color>();
  StreamSink<Color> get _stateSink => _stateController.sink;
  Stream<Color> get stateStreams => _stateController.stream;

  void _eventToStateBro(ColorEvent colorEvent) {
    if (colorEvent == ColorEvent.toAmber)
      _color = Colors.amber;
    else
      _color = Colors.lightBlue;

    _stateSink.add(_color);
  }

  ColorBlob() {
    _eventController.stream.listen(_eventToStateBro);
  }

  void dispose() {
    _eventController.close();
    _stateController.close();
  }
}
