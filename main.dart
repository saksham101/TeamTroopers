import 'package:flutter/material.dart';
import 'Aid_Home.dart';

void main()=> runApp(new MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "aid",
      theme: new ThemeData(
        primaryColor: new Color(0xFF26C6DA),
        accentColor: new Color(0xFF26C6DA),
        
      ),
      debugShowCheckedModeBanner: false,
      home: new AidHome(),
    );
  }
}