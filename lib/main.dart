import 'package:flutter/material.dart';
import 'dart:math';

void main() =>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Background Changer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home:Scaffold(
        appBar: AppBar(
          title:Text("Random Background Color"),
          centerTitle: true,
        ),
        body: HomePage(),
      ),
    );
  }
}
// Private class is presented as _ in Dart.

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var colors =[
    Colors.amber,
    Colors.red,
    Colors.black,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.orange,
  ];
  var currentColor = Colors.white;

  void  setRandomcolor(){
    var rnd = Random().nextInt(colors.length);
    setState(() {
      currentColor=colors[rnd];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: currentColor,
      child: Center(
        child: RaisedButton(
          color: Colors.black,
          padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          child: Text('Change it!',style: TextStyle(fontSize:20),),
          onPressed: setRandomcolor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
      ),
    );
  }
}

