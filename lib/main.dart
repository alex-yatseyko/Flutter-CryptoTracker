import 'package:flutter/material.dart';

void main() => runApp(CryptoTracker());

class CryptoTracker extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Crypto Tracker',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: Text('Hi')
    );
  }
}