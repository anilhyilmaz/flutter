import 'package:flutter/material.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'dart:async';

class Icerik extends StatefulWidget {
  @override
  _IcerikState createState() => _IcerikState();
}

class _IcerikState extends State<Icerik> {
  Future<String> getData() async {
    http.Response response = await http.get(
      Uri.encodeFull('https://jsonplaceholder.typicode.com/posts'),
      headers: {
        'Accept':'application/json'
      }
    );
    List data = convert.jsonDecode(response.body);
    print(data[1]['title']);
  }




  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: 500.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),topRight: Radius.circular(20.0)),
          color: Colors.white70,
        ),
        child: Column(children: <Widget>[
        Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                
                onPressed: getData,
        ),
            ),
          ],
        )
      ],),  
      ),
    );
  }
}