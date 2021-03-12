/// * @author Suyw
/// * @description:
/// * @date :2021/3/11
import 'package:flutter/material.dart';

class SwitcherWidget extends StatefulWidget {
  SwitcherWidget({Key key}) : super(key: key);

  @override
  SwitcherWidgetState createState() => SwitcherWidgetState();
}

class SwitcherWidgetState extends State<SwitcherWidget> {
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Switch.adaptive(
            value: isActive,
            activeColor: Colors.blueAccent,
            onChanged: (bool currentStatus) {
              isActive = currentStatus;
              setState(() {});
            }),
      ),
    );
  }

  changeState() {
    isActive = !isActive;
    setState(() {});
  }
}
