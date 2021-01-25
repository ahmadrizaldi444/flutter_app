import 'package:flutter/material.dart';
import 'package:flutter_application_2/tools/toolclass/application_color.dart';
import 'package:provider/provider.dart';

class ProviderStateManagementExample extends StatelessWidget {
  const ProviderStateManagementExample({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: missing_required_param
    return ChangeNotifierProvider<ApplicationColor>(
      builder: (context) => ApplicationColor(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Consumer<ApplicationColor>(
            builder: (context, applicationColor, _) => Text(
              "Provider State Management",
              style: TextStyle(color: applicationColor.getColor),
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Consumer<ApplicationColor>(
                builder: (context, applicationColor, _) => AnimatedContainer(
                  color: applicationColor.getColor,
                  duration: Duration(seconds: 1),
                  width: 100,
                  height: 100,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("AB"),
                  Consumer<ApplicationColor>(
                    builder: (context, applicationColor, _) => Switch(
                      value: applicationColor.isLightBlue,
                      onChanged: (newValue) {
                        applicationColor.isLightBlue = newValue;
                      },
                    ),
                  ),
                  Text("Lb")
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
