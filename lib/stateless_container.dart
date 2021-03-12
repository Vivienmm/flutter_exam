import 'package:flutter/material.dart';

import 'random_color.dart';

/// * @author Suyw
/// * @description:
/// * @date :2021/3/10
class StatelessContainer extends StatelessWidget {
  final Color color = RandomColor().randomColor();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: color,
    );
  }
}

