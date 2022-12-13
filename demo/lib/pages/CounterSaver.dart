import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vibration/vibration.dart';

class CounterSaver extends StatefulWidget {
  CounterSaver({Key key}) : super(key: key);

  @override
  State<CounterSaver> createState() => _CounterSaverState();
}

class _CounterSaverState extends State<CounterSaver> {

  int count = 0;




  saveClick() async {
    final prefs = await SharedPreferences.getInstance();

    prefs.setInt('count', count);

if (await Vibration.hasVibrator()) {
    Vibration.vibrate(duration: 4000);
}


  }


  
  getClick() async {
    final prefs = await SharedPreferences.getInstance();

    setState(() {
      count =  prefs.getInt("count");
    });
  }


  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    getClick();
  }





  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Container(
          height: 250,
          child: Column(
            children: [
              Text('$count Click', style: TextStyle(fontSize: 30),),
              RaisedButton(
                onPressed: (){
                  setState(() {
                    count = count + 1;
                  });

                  saveClick();
                },
                child: Text("Click me !!"),
              )
            ],
          ),
        ),
      ),
    );
  }
}