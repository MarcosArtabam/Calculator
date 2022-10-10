import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'button.dart';
import 'button_row.dart';

class keyboard extends StatelessWidget {
  final void Function(String) cb;
  keyboard(this.cb);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      child: Column(
        children: <Widget>[
          ButtonRow([
            Button.big(text: 'AC', color: Button.Default, cb: cb),
            Button.operation(text: '%', cb: cb),
            Button.operation(text: '/', cb: cb),
          ]),
          ButtonRow([
            Button(text: '7', cb: cb),
            Button(text: '8', cb: cb),
            Button(text: '9', cb: cb),
            Button.operation(text: 'x', cb: cb),
          ]),
          ButtonRow([
            Button(text: '4', cb: cb),
            Button(text: '5', cb: cb),
            Button(text: '6', cb: cb),
            Button.operation(text: '-', cb: cb),
          ]),
          ButtonRow([
            Button(text: '1', cb: cb),
            Button(text: '2', cb: cb),
            Button(text: '3', cb: cb),
            Button.operation(text: '+', cb: cb),
          ]),
          ButtonRow([
            Button.big(text: '0', cb: cb),
            Button.operation(text: '.', color: Button.Dark, cb: cb),
            Button.operation(
                text: '=', color: Color.fromARGB(255, 68, 73, 82), cb: cb),
          ]),
        ],
      ),
    );
  }
}
