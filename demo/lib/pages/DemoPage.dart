import 'package:flutter/material.dart';

class DemoPage extends StatefulWidget {
  DemoPage({Key key}) : super(key: key);

  @override
  State<DemoPage> createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("hello world", style: new TextStyle( fontSize: 30, color: Colors.red ),),
          Text("hello world"),
          Text("hello world"),
          Text("hello world"),
          Text("hello world"),

          RaisedButton( onPressed: (){ } , child: Text("click me"), elevation: 20, ),

          FlatButton(onPressed: (){ } , child: Text("click me",style: TextStyle(color: Colors.white),), color: Colors.orange,),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              
              Container(
                height: 100,
                width: 100,
                color: Colors.orange,
              ),

              Container(
                height: 100,
                width: 100,
                color: Colors.orange,
              ),
              
              Container(
                height: 100,
                width: 100,
                color: Colors.orange,
              ),
              
              
            ],
          )
        ],
      )
    );
  }
}