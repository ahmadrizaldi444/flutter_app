import 'package:flutter/material.dart';
import 'package:flutter_application_2/tools/toolclass/blob_color.dart';

class BlobExample extends StatelessWidget {
  ColorBlob colorBlob = ColorBlob();

  @override
  void dispose() {
    colorBlob.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              colorBlob.eventSink.add(ColorEvent.toAmber);
            },
            backgroundColor: Colors.amber,
          ),
          SizedBox(
            width: 5,
          ),
          FloatingActionButton(
            onPressed: () {
              colorBlob.eventSink.add(ColorEvent.toLightBlue);
            },
            backgroundColor: Colors.lightBlue,
          )
        ],
      ),
      appBar: AppBar(
        title: Text("Blob Management"),
      ),
      body: Center(
          child: StreamBuilder(
              stream: colorBlob.stateStreams,
              initialData: Colors.amber,
              builder: (context, snapshot) {
                return AnimatedContainer(
                    width: 100,
                    height: 100,
                    duration: Duration(seconds: 1),
                    decoration: BoxDecoration(color: snapshot.data));
              })),
    );
  }
}
