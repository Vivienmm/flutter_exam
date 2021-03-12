import 'package:flutter/cupertino.dart';

import 'father.dart';

/// * @author Suyw
/// * @description:
/// * @date :2021/3/11
class ChildOne extends StatefulWidget {
  @override
  _ChildOneState createState() => _ChildOneState();
}
class _ChildOneState extends State<ChildOne> {
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print("ChildOnedidChangeDependencies");
  }
  @override
  Widget build(BuildContext context) {
    int number = FatherWidget
        .of(context)
        .number;
    return Container(
      child: Text("$number"),
    );
  }
}
class ChildTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int number = FatherWidget.of(context).number;
    return Container(
      child: Text("$number"),
    );
  }
}