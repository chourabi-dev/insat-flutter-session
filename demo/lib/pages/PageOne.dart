import 'package:demo/pages/PageTwo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  PageOne({Key key}) : super(key: key);

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {

  TextEditingController _x = new TextEditingController();

  TextEditingController _y = new TextEditingController();


  String _errorMessageY = null;
  String _errorMessageX = null;
  


  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;




    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Container(
              height: 50,
            ),

            Container(
              child: Text("X:",style: TextStyle( fontSize: 30 ),),
              padding: EdgeInsets.all(15),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: TextField(
                controller: _x,
                decoration: InputDecoration(
                  errorText: _errorMessageX
                ),
              ),
            ),
            Container(
               child: Text("Y:",style: TextStyle( fontSize: 30 ),),
              padding: EdgeInsets.all(15),
            ),

            Container(
              padding: EdgeInsets.all(15),
              child: TextField(
                controller: _y,
                decoration: InputDecoration(
                  hintText: "Please type in y value",
                  errorText: _errorMessageY,
                  
                ),
                
              ),
            ),

            Container(
              padding: EdgeInsets.all(15),
              width: w,
              child: RaisedButton(
                
                child: Text('Calculer'),
                onPressed: (){
                  
                  String y = _y.text;
                  String x = _x.text;
                  

                  if (y=="") {
                    setState(() {
                      _errorMessageY="this feild is required";
                    });
                  }else{
                    setState(() {
                      _errorMessageY =null;
                    });
                  }



                  if (x=="") {
                    setState(() {
                      _errorMessageX="this feild is required";
                    });
                  }else{
                    setState(() {
                      _errorMessageX =null;
                    });
                  }



                  if (x!= "" && y !="") {
                    // NAVIGATE TO PAGE 2

                    // MaterialPageRoute
                    Navigator.push(context, new CupertinoPageRoute(builder: (context) {
                        return PageTwo(x: x, y: y,);
                    },) );
                  }

                },
              ),
            )
            

          ],
        ),
      ),
    );
    
  }
}