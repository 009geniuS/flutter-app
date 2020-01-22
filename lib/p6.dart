import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:torch/torch.dart';


class Practical6 extends StatefulWidget {
  @override
  _Practical6State createState() => _Practical6State();
}

class _Practical6State extends State<Practical6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Practical6'),),
      
      body: Center(child: ListView(
        children: <Widget>[
          RaisedButton(
            child: Text('ON'),
            onPressed: Torch.turnOn,
          ),
          RaisedButton(
            onPressed:Torch.turnOn,
            child: Text('OFF'),
          )
        ]
      )
      )
    );
  }
}
