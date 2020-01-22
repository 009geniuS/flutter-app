import 'package:flutter/material.dart';

class Prac1 extends StatefulWidget{
  _Prac1state createState()=>_Prac1state();
  }
  
class _Prac1state extends State<Prac1>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("practicle1"),),
      backgroundColor: Colors.yellow,
      body: Center(child: Text("hello how are you??"),),
    );
  }
}
