import 'package:flutter/material.dart';
// import 'package:english_words/english_words.dart';
// import 'package:myapp/main.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello world!!!'),
        ),
        body: Text(
          'Hello world',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
