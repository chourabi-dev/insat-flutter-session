import 'package:flutter/material.dart';

class AddShoppingItem extends StatefulWidget {
  final dynamic addFN;
  
  AddShoppingItem({Key key, this.addFN}) : super(key: key);

  @override
  State<AddShoppingItem> createState() => _AddShoppingItemState();
}

class _AddShoppingItemState extends State<AddShoppingItem> {

  TextEditingController _item = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add item"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              Container(
                child: TextField(
                  minLines: 2,
                  maxLines: 5,
                  controller: _item,
                ),
              ),
              Container(
                child: FlatButton(
                  onPressed: (){
                    String val = _item.text;

                    widget.addFN(val);

                    // Destroy context

                    Navigator.pop(context);

                  },

                  child: Text("Add"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}