import 'package:flutter/material.dart';
import 'package:movieapp/dashboard_screen.dart';
import 'package:movieapp/detailed_screen.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Movie_ui',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor:Colors.black45,
      ),
      home: DashboardScreen(),
      routes: {
        MovieDetailsScreen.routeName:(ctx)=> MovieDetailsScreen(),
      },
    );
  }
}

