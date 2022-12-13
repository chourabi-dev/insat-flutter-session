import 'package:demo/widgets/Todo.dart';
import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  ListPage({Key key}) : super(key: key);

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {

  List _data = [
    { "title":"create flutter app 1", "content":"demo crete app" },
    { "title":"create flutter app 2", "content":"demo crete app" },
    { "title":"create flutter app 3", "content":"demo crete app" },
    
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemCount: _data.length , itemBuilder: (ctx, index) {
        return  TodoCard(
            title: _data[index]["title"],
            content: _data[index]["content"],
          );
      },)
    );
  }
}