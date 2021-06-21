import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MaterialApp(
  home:Home(),

  ),); //MaterialApp
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('My First app'),
        centerTitle: true,
        backgroundColor:Colors.lightGreenAccent,
      ),
      body:Row(
        children: <Widget>[
          Expanded(flex:5,child: Image.asset('img/wall1.png')),
          Expanded(
            flex:3,
            child: Container(
              padding:EdgeInsets.all(30.0),
              color:Colors.cyan,
              child:Text('1'),
              ),
          ),
          Expanded(
            flex:2,
            child: Container(
              padding:EdgeInsets.all(30.0),
              color:Colors.amber,
                child:Text('2'),
            ),
          ),
          Expanded(
            flex:3,
            child: Container(
              padding:EdgeInsets.all(30.0),
              color:Colors.greenAccent,
              child:Text('3'),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('Click'),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}

