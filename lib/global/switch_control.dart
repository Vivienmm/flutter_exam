import 'package:flutter/material.dart';
import 'package:flutter_exam/global/switch_widget.dart';

/// * @author Suyw
/// * @description:
/// * @date :2021/3/11
class SwitchControlPage extends StatefulWidget {
  SwitchControlPage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<SwitchControlPage> {
  final GlobalKey<SwitcherWidgetState> key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SwitcherWidget(
        key: key,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          key.currentState.changeState();
        },
        child: Text('切换'),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}