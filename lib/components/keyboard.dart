import 'dart:html';

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'button.dart';
import 'button_row.dart';

class keyboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      child: Column(
        children: <Widget>[
          ButtonRow([
            Button.big(
              text: 'AC',
              color: Color.fromARGB(236, 22, 22, 22),
            ),
            Button.operation(text: '%'),
            Button.operation(text: '/'),
          ]),
          ButtonRow([
            Button(text: '7'),
            Button(text: '8'),
            Button(text: '9'),
            Button.operation(text: 'x'),
          ]),
          ButtonRow([
            Button(text: '4'),
            Button(text: '5'),
            Button(text: '6'),
            Button.operation(text: '-'),
          ]),
          ButtonRow([
            Button(text: '1'),
            Button(text: '2'),
            Button(text: '3'),
            Button.operation(text: '+'),
          ]),
          ButtonRow([
            Button.big(text: '0'),
            Button.operation(
              text: '.',
              color: Color.fromARGB(255, 5, 5, 5),
            ),
            Button.operation(
              text: '=',
              color: Color.fromARGB(255, 68, 73, 82),
            ),
          ]),
        ],
      ),
    );
  }
}
