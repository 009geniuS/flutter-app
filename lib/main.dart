import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final appTitle = 'Drawer Demo';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: Prac2(),
      debugShowCheckedModeBanner: false,
      
    );
  }
}
class Prac2 extends StatefulWidget{
  _Prac2state createState()=>_Prac2state();
  }
class _Prac2state extends State<Prac2> {
 
final  _children = [
   practicle1(),
   practicle2(),
   practicle3(),
   practicle1(),

 ];
  
int ci=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: _children[ci],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: ci,

        items: [
          
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('HOME'),
            backgroundColor: Colors.blue,
            
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('SEARCH'),
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera),
            title: Text('CAMERA'),
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('PERSON'),
            backgroundColor: Colors.yellow,
          )
        ],
        onTap: (index){
          setState(() {
            ci=index;
          });
        },
      ),
    );
  }
}
class practicle1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("practicle1"),),
      
      body: Center(child: Text("hello how are you??"),),
    );
  }
}
class practicle3 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("practicle3"),),
      
      body: Center(child: Text("hello how are you??"),),
    );
  }
}
class practicle2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("practicle2"),),
      
      body: Center(child: Text("hello how are you??"),),
    );
  }
}