import 'package:flutter/material.dart';

/// * @author Suyw
/// * @description:
/// * @date :2021/3/11
class FatherWidget extends InheritedWidget {
  final int number;
  const FatherWidget({this.number,
    Key key,
    @required Widget child,
  })  : assert(child != null),
        super(key: key, child: child);

  static FatherWidget of(BuildContext context) {
    //沿element树找到最近的FatherWidget
    return context.dependOnInheritedWidgetOfExactType<FatherWidget>();
  }

  @override
  bool updateShouldNotify(FatherWidget old) {
//如果为true时会刷新调用子类ChildOnedidChangeDependencies方法
    return old.number != number;
  }
}