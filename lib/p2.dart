import 'package:flutter/material.dart';

class Prac2 extends StatefulWidget{
  _Prac2state createState()=>_Prac2state();
  }
  
class _Prac2state extends State<Prac2>{
  String enter;
  String enter2;
  int e1;
  int e2;
  int e3=0;
  String e4='0';
  void _incrementCounter() {
    setState(() {
      e3=e1+e2;
      e4=e3.toString();
    });
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: new Text("practicle2"),),
      body: Center(
        child: ListView(
          children: <Widget>[
            TextField(decoration: InputDecoration(
              border: OutlineInputBorder(),
              prefix: CircularProgressIndicator(),
              hintText: "enter first number",
            ),
            onChanged: (val){
              enter = val;
              e1=int.parse(enter);
            }
            ),
            TextField(
              maxLength: 3,
              cursorColor: Colors.red,
              keyboardType: TextInputType.number,//number only tou can type
              cursorRadius: Radius.circular(16.0),
              cursorWidth: 16.0,
              decoration: InputDecoration(
              icon: Icon(Icons.send),
              border: OutlineInputBorder(),
              hintText: "enter second number",
            ),
            
            onChanged: (val){
              enter2 = val;
              e2=int.parse(enter2);
              
            }
            ),
            
            RaisedButton(
              child: Text('submit answer'),
              
              onPressed: _incrementCounter,
            ),
            ListTile(
              
              title: Text(e4),
            )
          ]
        )
      )
    );
  }
}
