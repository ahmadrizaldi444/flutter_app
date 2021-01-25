import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedprefExample extends StatefulWidget {
  @override
  _SharedprefExampleState createState() => _SharedprefExampleState();
}

class _SharedprefExampleState extends State<SharedprefExample> {
  TextEditingController controller = TextEditingController();
  bool isOn = false;

  Future addStringToSF() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('nama', "abc");
  }

  Future<String> loadNama() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString("nama") ?? "No Nama";
  }

  Future<bool> loadBoolean() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getBool("ison") ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextField(
            controller: controller,
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.person), hintText: "Masukkan Nama"),
          ),
          Switch(
              value: isOn,
              onChanged: (newValue) {
                setState(() {
                  isOn = newValue;
                });
              }),
          RaisedButton.icon(
              onPressed: () {
                addStringToSF();
              },
              icon: Icon(Icons.save),
              label: Text("Save")),
          RaisedButton.icon(
              onPressed: () {
                loadNama().then((s) => controller.text = s);
                loadBoolean().then((b) => isOn = b);

                setState(() {});
              },
              icon: Icon(Icons.get_app),
              label: Text("Load"))
        ],
      ),
    );
  }
}
