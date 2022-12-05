import 'package:demo/widgets/Block.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 5;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
      ),
      appBar: AppBar(
        title: Text("Home page"),
        actions: [
          IconButton(
            icon: Icon(Icons.access_alarm),
            onPressed: (){
              print("btn clicked !!!");
            },
          )
        ],
      ),

      body: Center(
        child: 

        BlockInfo(product: "data from home page",)
        
        /*RaisedButton(
          onPressed: (){
            

            setState(() {
              count++;
            });
          },
          child: Text("${count} click"),
        ),*/
      ),



    );
  }
}