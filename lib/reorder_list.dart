import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_exam/stateful_container.dart';

/// * @author Suyw
/// * @description:
/// * @date :2021/3/11
 
class ReOrderList extends StatefulWidget{
  ReOrderList({Key key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _ReOrderListState();
  
}

class _ReOrderListState extends State<ReOrderList> {

  final List<int> _items = List<int>.generate(50, (int index) => index);

  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final oddItemColor = colorScheme.primary.withOpacity(0.05);
    final evenItemColor = colorScheme.primary.withOpacity(0.15);

    return ReorderableListView(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      onReorder:(int sIndex,int newIndex){},
      children: <Widget>[
        for (int index = 0; index < _items.length; index++)
          ListTile(
            key: Key('$index'),
            tileColor: _items[index].isOdd ? oddItemColor : evenItemColor,
            title: Text('Item ${_items[index]}'),
          ),
      ],


scrollDirection: Axis.vertical,

//      onReorder: (int oldIndex, int newIndex) {
////        setState(() {
////          if (oldIndex < newIndex) {
////            newIndex -= 1;
////          }
////          final int item = _items.removeAt(oldIndex);
////          _items.insert(newIndex, item);
////        });
     // },
    );
  }

  void reorderData(int oldindex, int newindex){
    setState(() {
      if(newindex>oldindex){
        newindex-=1;
      }

    });
  }


  
}