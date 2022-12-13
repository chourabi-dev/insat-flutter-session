import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class HttpCall extends StatefulWidget {
  HttpCall({Key key}) : super(key: key);

  @override
  State<HttpCall> createState() => _HttpCallState();
}

class _HttpCallState extends State<HttpCall> {

  bool _isLoading = true;

  List users = [];




  Future<Response> getDataFromServer() async {
    String endPoint = "https://jsonplaceholder.typicode.com/users";
    return await get(endPoint);

  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();


    getDataFromServer().then((res){
      print(res.body);

      dynamic body = json.decode(res.body);

      print(body[0]["name"]);

      setState(() {
        users = body;
      });

    }).catchError( (e){

    } ).whenComplete((){
      setState(() {
        _isLoading = false;
      });
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 80,
        child: Image.network("https://www.pngarts.com/files/6/User-Avatar-in-Suit-PNG.png",fit: BoxFit.cover,),
      )
      
       /*_isLoading == true ? Center( child: CircularProgressIndicator(), ) : Container(
        child: ListView.builder( itemCount: users.length, itemBuilder: (context, index) {
          return(
            ListTile(
              title: Text(users[index]["name"]),
              subtitle: Text(users[index]["email"]),
              leading: CircleAvatar(
                backgroundImage: NetworkImage('https://www.pngarts.com/files/6/User-Avatar-in-Suit-PNG.png'),
              ),
            )
          );
        }, ),
      ),*/
    );
  }
}