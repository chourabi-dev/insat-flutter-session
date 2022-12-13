import 'package:flutter/material.dart';

class AdvancedPage extends StatefulWidget {
  AdvancedPage({Key key}) : super(key: key);

  @override
  State<AdvancedPage> createState() => _AdvancedPageState();
}

class _AdvancedPageState extends State<AdvancedPage> {
  

  String title="";

  TextEditingController _controller = new TextEditingController();
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          height: 20,
        ),
        Text(title),

        TextField(
          controller: _controller,
          onChanged: (String value){
            print(value);

            setState(() {
              title = value;
            });

          },
        ),


        FlatButton(
          onPressed: (){
             print( _controller.text);

             _controller.text="";
          },
          child: Text("get the text from input"),
        )

      ],),
    );
  }
}