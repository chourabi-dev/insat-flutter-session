import 'package:flutter/material.dart';

class TodoCard extends StatelessWidget {
  final String title;
  final String content;
  
  const TodoCard({Key key, this.title, this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only( bottom: 15 ),
      child: Card(
        
        child: Container(
          padding: EdgeInsets.only( top: 15, bottom: 15, left: 15, right: 15 ),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
              Text(content,style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),),
          ],
        ),
        ),
      ),
    );
  }
}