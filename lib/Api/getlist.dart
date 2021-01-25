import 'package:flutter/material.dart';
import 'package:flutter_application_2/Api/Model/user_model.dart';

class GetListUser extends StatefulWidget {
  @override
  _GetListUserState createState() => _GetListUserState();
}

class _GetListUserState extends State<GetListUser> {
  String output = "No Data";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(output),
            RaisedButton(
              onPressed: () {
                User.getUser("2").then((users) {
                  output = "";
                  for (int i = 0; i < users.length; i++) {
                    output += "[" + users[i].name + " | " + users[i].id + "]";
                  }
                  setState(() {});
                });
              },
              child: Text("Get"),
            )
          ],
        ),
      ),
    );
  }
}
