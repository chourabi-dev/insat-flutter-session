import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget {
  final String x;
  final String y;
  
  PageTwo({Key key, this.x, this.y}) : super(key: key);

  @override
  State<PageTwo> createState() => _PageTwoState();
}









class _PageTwoState extends State<PageTwo> {

  String _x;
  String _y;

  int somme = 0;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _x = widget.x;
    _y = widget.y;
    

    try {
       somme = ( int.parse(_x)  ) + ( int.parse(_y) );
    } catch (e) {
    }

  }
  



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text( "La somme = $somme" ),
      ),
    );
  }
}