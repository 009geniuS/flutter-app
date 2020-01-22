import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'dart:async';

class Prac3 extends StatefulWidget{
  _Prac3state createState()=>_Prac3state();
}
class _Prac3state extends State<Prac3> {
int a=0;
int b=0;
Color i= Colors.yellow;
  
void _call(){
    a=0;
    setState(() {
     i=Colors.yellow;
      }
    );
    
    Fluttertoast.showToast(
                        msg: 'Hello How Are You?',
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIos: 3,
                        backgroundColor: Colors.blue,
                        textColor: Colors.white,
                        fontSize: 16.0
                      );
    Timer.periodic(Duration(seconds: 4), (timer)  {
                    if(a==1)
                      {
                        timer.cancel();
                        setState(() {
                          i=Colors.red;
                        });
                        
                      }
       Fluttertoast.showToast(
                        msg: 'Hello How Are You?',
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIos: 3,
                        backgroundColor: Colors.blue,
                        textColor: Colors.white,
                        fontSize: 16.0,
                      );
                      
    }
    );
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: new Text("practicle3"),),
      backgroundColor: i,
        body:Center(
          child: ListView(
            children: <Widget>[
              RaisedButton(
                child: Text("toast"),
                onPressed: _call,
              ),
              RaisedButton(
                child: Text("stop"),
                onPressed: (){
                  a=1;
                  
                }
              )
            ]
          )
        )
    );
  }
}
