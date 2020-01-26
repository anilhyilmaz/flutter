import 'package:flutter/material.dart';
import 'package:google_flutter/category.dart';
import 'package:google_flutter/icerik.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title:Text('Akademia',
        textAlign: TextAlign.left,
        style: TextStyle(fontWeight: FontWeight.bold),
        textDirection: TextDirection.ltr,
        ),
        elevation: 0.0,
        actions: <Widget>[IconButton(
          icon: Icon(Icons.search),
          onPressed: (){

          },
        )],
      ),
      body: Column(
        children: <Widget>[
          Category(),
          Icerik(),
        ],
      ),
    );
  }
}