import 'package:flutter/material.dart';

import 'package:fluttertoast/fluttertoast.dart';
import 'dart:async';
class Practical3 extends StatefulWidget {
  @override
  _Practical3State createState() => _Practical3State();
}

class _Practical3State extends State<Practical3> {
  int a=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar( title:Text('Practical3'),),
      
      body: Center(child: ListView(
        children: <Widget>[
          RaisedButton(
            child:Text('toast') ,
            onPressed: showtoast,
            ),
             RaisedButton(
            child:Text('Stoptoast') ,
            onPressed:(){
              a=1;
            },
            )
        ],
      ),)
    );
  }

  void showtoast(){
    a=0;
    Timer.periodic(Duration(seconds: 5), (timer)  {
                    if(a==1)
                      {
                        timer.cancel();
                      }
       Fluttertoast.showToast(
                        msg: 'Hello How Are You?',
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIos: 3,
                        backgroundColor: Colors.blue,
                        textColor: Colors.white,
                        fontSize: 16.0
                      );
                      
});
  }
}