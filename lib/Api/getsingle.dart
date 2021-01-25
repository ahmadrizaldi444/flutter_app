import 'package:flutter/material.dart';
import 'package:flutter_application_2/Api/Model/user_model.dart';

class GetSingle extends StatefulWidget {
  @override
  _GetSingleState createState() => _GetSingleState();
}

class _GetSingleState extends State<GetSingle> {
  int position = 1;
  User user = null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text((user != null) ? user.id + " " + user.name : "Tidak Ada Data"),
            RaisedButton(
              onPressed: () {
                User.connectToApi("10").then((value) => user = value);
                position++;
                setState(() {});
              },
              child: Text("Get Single"),
            )
          ],
        ),
      ),
    );
  }
}
