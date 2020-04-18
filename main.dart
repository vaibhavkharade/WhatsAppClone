import 'package:cards/second.dart';
import 'package:cards/top_part.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      theme: ThemeData(primaryColor: Color.fromRGBO(7, 94, 84, 1)),
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      home: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(children: [
          Expanded(flex: 1, child: Top()),
          Expanded(flex: 5, child: Second())
        ]),
      ),
    );
  }
}
