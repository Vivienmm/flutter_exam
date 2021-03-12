import 'package:flutter/material.dart';
import 'package:flutter_exam/padding_container.dart';
import 'package:flutter_exam/stateless_container.dart';

import 'global/switch_control.dart';
import 'inher/child.dart';
import 'inher/father.dart';
import 'stateful_container.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Widget> widgets = [
    Padding(

      padding: EdgeInsets.all(8.0),
      child: StatefulContainer(
        key: UniqueKey(),
      ),
    ),
    Padding(

      padding: EdgeInsets.all(8.0),
      child: StatefulContainer(
        key: UniqueKey(),
      ),
    ),
//    StatefulContainer(),
//    StatefulContainer(),

//    StatefulContainer(key: UniqueKey(),),
//    StatefulContainer(key: UniqueKey(),),

//    StatelessContainer(),
//    StatelessContainer(),
  ];

//  final List<int> _items = List<int>.generate(50, (int index) => index);
//
//  Widget build(BuildContext context) {
//    final ColorScheme colorScheme = Theme.of(context).colorScheme;
//    final oddItemColor = colorScheme.primary.withOpacity(0.05);
//    final evenItemColor = colorScheme.primary.withOpacity(0.15);
//
//    return ReorderableListView(
//      padding: const EdgeInsets.symmetric(horizontal: 40),
//      children: <Widget>[
//        for (int index = 0; index < _items.length; index++)
//          Card(
//            key: Key('$index'),
//            child: ListTile(
//              tileColor: _items[index].isOdd ? oddItemColor : evenItemColor,
//              title: Text('Item ${_items[index]}'),
//            ),
//          ),
//      ],
//      onReorder: (int oldIndex, int newIndex) {
//        setState(() {
//          if (oldIndex < newIndex) {
//            newIndex -= 1;
//          }
//          final int item = _items.removeAt(oldIndex);
//          _items.insert(newIndex, item);
//        });
//      },
//    );
//  }

//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      body: Center(
//        child: Row(
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: widgets,
//
//        ),
//        //child:ReorderableListView(),
//      ),
//      floatingActionButton: FloatingActionButton(
//        onPressed: switchWidget,
//        child: Icon(Icons.undo),
//      ),
//    );
//  }


//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      body: SwitchControlPage(),
//    );
//  }
//


  int _number = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("测试State"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            _number++;
          });
        },
      ),
      body: Center(
        child: FatherWidget(
          number: _number,
          child: Column(
            children: [
              ChildOne(),
              ChildTwo()
            ],
          ),
        ),
      ),
    );
  }
  switchWidget() {
    print("syw-switchWidget");

    setState(() {
      widgets.insert(0, widgets.removeAt(1));
      print("第一个" +
          widgets[0].key.toString() +
          "第二个" +
          widgets[1].key.toString());
    });
  }




}
