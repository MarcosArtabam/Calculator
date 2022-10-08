import 'dart:html';

import 'package:flutter/foundation.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  static const Dark = Color.fromARGB(255, 5, 5, 5);
  static const Default = Color.fromARGB(255, 22, 22, 22);

  final String text;
  final bool big;
  final Color color;

  Button({
    required this.text,
    this.big = false,
    this.color = Dark,
  });

  Button.big({
    required this.text,
    this.big = true,
    this.color = Dark,
  });

  Button.operation({
    required this.text,
    this.big = false,
    this.color = Default,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: big ? 2 : 1,
      child: Padding(
        padding: const EdgeInsets.all(1.5),
        child: ElevatedButton(
          child: Text(
            text,
            style: TextStyle(
                color: Colors.white, fontSize: 32, fontWeight: FontWeight.w200),
          ),
          onPressed: () {},
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.zero),
            ),
            backgroundColor: MaterialStateProperty.all(this.color),
          ),
        ),
      ),
    );
  }
}
