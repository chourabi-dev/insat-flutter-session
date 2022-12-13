import 'package:demo/pages/AddShoppingItem.dart';
import 'package:flutter/material.dart';

class ShoppingApp extends StatefulWidget {
  ShoppingApp({Key key}) : super(key: key);

  @override
  State<ShoppingApp> createState() => _ShoppingAppState();
}

class _ShoppingAppState extends State<ShoppingApp> {

  List items = [];
 

  addItem(String val){
    print(val);

    List tmp = items;

    tmp.add(val);

    setState(() {
      items = tmp;
    });

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(itemCount: items.length , itemBuilder: (context, index) {
          return Text( items[index] );
        },) ,
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.plus_one),
        onPressed: (){
          Navigator.push(context, new MaterialPageRoute(builder: (ctx){
            return AddShoppingItem( addFN: this.addItem , );
          }));
        },
      ),
    );
  }
}