import 'dart:io';
import 'package:flutter/material.dart';
//import './pkg_jp/screen_1.dart';
import './pkg_jp/Screens.dart';


void main()
{
  runApp(new MyApp());
}

class MyApp extends StatelessWidget
{
  int count;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new FirstScreen(count),
    );
  }
  
}
