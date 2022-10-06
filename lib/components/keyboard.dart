import 'dart:html';

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class keyboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(1.0),
            child: ElevatedButton(
              onPressed: () {},
              child: Text('1'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(1.0),
            child: ElevatedButton(
              onPressed: () {},
              child: Text('2'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(1.0),
            child: ElevatedButton(
              onPressed: () {},
              child: Text('3'),
            ),
          ),
        ],
      ),
    );
  }
}
