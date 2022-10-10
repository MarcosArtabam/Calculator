import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:auto_size_text/auto_size_text.dart';

class Display extends StatelessWidget {
  final String text;
  Display(this.text);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        color: Color.fromARGB(255, 39, 39, 39),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AutoSizeText(
                text,
                maxLines: 1,
                textAlign: TextAlign.end,
                style: TextStyle(
                    fontWeight: FontWeight.w100,
                    decoration: TextDecoration.none,
                    fontSize: 120,
                    color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
