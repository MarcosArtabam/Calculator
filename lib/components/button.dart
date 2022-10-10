import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class Button extends StatelessWidget {
  static const Dark = Color.fromARGB(255, 2, 2, 2);
  static const Default = Color.fromARGB(255, 20, 20, 20);

  final String text;
  final bool big;
  final Color color;
  final void Function(String) cb;

  Button({
    required this.text,
    this.big = false,
    this.color = Dark,
    required this.cb,
  });

  Button.big({
    required this.text,
    this.big = true,
    this.color = Dark,
    required this.cb,
  });

  Button.operation({
    required this.text,
    this.big = false,
    this.color = Default,
    required this.cb,
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
          onPressed: () => cb(text),
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
