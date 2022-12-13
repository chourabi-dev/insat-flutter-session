import 'package:demo/pages/AdvancedPage.dart';
import 'package:demo/pages/CounterSaver.dart';
import 'package:demo/pages/DemoPage.dart';
import 'package:demo/pages/HttpCall.dart';
import 'package:demo/pages/ListPage.dart';
import 'package:demo/pages/PageOne.dart';
import 'package:demo/pages/ShoppingApp.dart';
import 'package:demo/widgets/homePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HttpCall()
    );
  }



}
