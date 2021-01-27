import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_application_2/tools/toolclass/blob_color2.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlobPackageExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ColorBlob2>(
        builder: (context) => ColorBlob2(), child: MyPage());
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ColorBlob2 colorBlob2 = BlocProvider.of<ColorBlob2>(context);
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
              onPressed: () {
                colorBlob2.dispatch(ColorEvent.toamber);
              },
              backgroundColor: Colors.amber),
          SizedBox(
            width: 10,
          ),
          FloatingActionButton(
              onPressed: () {
                colorBlob2.dispatch(ColorEvent.to_lightBlue);
              },
              backgroundColor: Colors.lightBlue),
        ],
      ),
      appBar: AppBar(
        title: Text("dasdasd"),
      ),
      body: Center(
          child: BlocBuilder<ColorBlob2, Color>(
        builder: (context, currentCOlor) => Container(
          width: 100,
          height: 100,
          color: currentCOlor,
        ),
      )),
    );
  }
}
