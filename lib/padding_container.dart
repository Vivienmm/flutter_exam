/// * @author Suyw
/// * @description:
/// * @date :2021/3/10
import 'package:flutter/material.dart';

import 'random_color.dart';

/// * @author Suyw
/// * @description:
/// * @date :2021/3/10
class PaddingContainer extends StatefulWidget {
  PaddingContainer({Key key}) : super(key: key);
  @override
  _PaddingContainerState createState() => _PaddingContainerState();
}

class _PaddingContainerState extends State<PaddingContainer> {
  final Color color = RandomColor().randomColor();

  @override
  Widget build(BuildContext context) {
    return Padding(

      padding: EdgeInsets.all(8.0),
       child: Container(
          width: 100,
          height: 100,
          color: color,
        ),
    );
  }
}

