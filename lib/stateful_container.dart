import 'package:flutter/material.dart';

import 'random_color.dart';

/// * @author Suyw
/// * @description:
/// * @date :2021/3/10
class StatefulContainer extends StatefulWidget {
  StatefulContainer({Key key}) : super(key: key);
  @override
  _StatefulContainerState createState() => _StatefulContainerState();
}

class _StatefulContainerState extends State<StatefulContainer> {
  final Color color = RandomColor().randomColor();

  @override
  void reassemble() {
    // TODO: implement reassemble
    super.reassemble();
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: color,
    );
  }
}

