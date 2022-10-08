import 'package:calculator/components/keyboard.dart';
import 'package:flutter/material.dart';
import '../components/display.dart';
import '../components/keyboard.dart';

class Calculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Color.fromARGB(255, 39, 39, 39),
          body: Column(
            children: <Widget>[
              Display('0'),
              keyboard(),
            ],
          ),
        ));
  }
}
