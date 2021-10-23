import 'package:flutter/material.dart';
import 'package:routing/Screen/HomePage.dart';

void main() =>runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(primaryColor: Colors.redAccent,),
      home: new HomePage(),
    );
  }
}
