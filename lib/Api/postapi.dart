import 'package:flutter/material.dart';
import 'package:flutter_application_2/Api/Model/postresultmodel.dart';

class PostApi extends StatefulWidget {
  @override
  _PostApiState createState() => _PostApiState();
}

class _PostApiState extends State<PostApi> {
  PostResult postResult = null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text((postResult != null)
                ? postResult.name +
                    " | " +
                    postResult.job +
                    " | " +
                    postResult.created
                : "Tidak ada data"),
            RaisedButton.icon(
              onPressed: () {
                PostResult.connectToAPI("Ahmad", "Programmer")
                    .then((value) => postResult = value);
                setState(() {});
              },
              icon: Icon(Icons.add),
              label: Text("Post Data"),
            )
          ],
        ),
      ),
    );
  }
}
