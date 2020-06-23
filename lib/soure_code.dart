import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SourceCode extends StatefulWidget {
  double topLeftRadius;
  double topRightRadius;
  double bottomLeftRadius;
  double bottomRightRadius;

  SourceCode({
    this.topLeftRadius = 0.0,
    this.topRightRadius = 0.0,
    this.bottomLeftRadius = 0.0,
    this.bottomRightRadius = 0.0,
  });

  @override
  _SourceCodeState createState() => _SourceCodeState();
}

class _SourceCodeState extends State<SourceCode> {
  @override
  Widget build(BuildContext context) {
    List<String> code = <String>[
      'Container(\n'
          '  height: 300,\n'
          '  width: 300,\n'
          '  decoration: BoxDecoration(\n'
          '    borderRadius: BorderRadius.only(\n'
          '      topLeft: Radius.circular(${widget.topLeftRadius.floor()}),\n'
          '      topRight: Radius.circular(${widget.topRightRadius.floor()}),\n'
          '      bottomLeft: Radius.circular(${widget.bottomLeftRadius.floor()}),\n'
          '      bottomRight: Radius.circular(${widget.bottomRightRadius.floor()}),\n'
          '    ),\n'
          '    color: Colors.black,\n'
          '  ),\n'
          '  child: Column(\n'
          '    mainAxisAlignment: MainAxisAlignment.center,\n'
          '    children: [\n'
          '      Center(\n'
          '        child: Text(\n'
          '          \'I\'m a customizeable Container!\',\n'
          '          style: TextStyle(color: Colors.black),\n'
          '        ),\n'
          '      ),\n'
          '    ],\n'
          '  ),\n'
          '),\n'
    ];

    String codeString = code.toString().substring(1, code.toString().length - 2);

    return SingleChildScrollView(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: GestureDetector(
          child: Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.grey[200],
            ),
            child: Text(
              codeString,
            ),
          ),
          onLongPress: () {
            Clipboard.setData(ClipboardData(text: codeString));
            Fluttertoast.showToast(
              msg: 'Code copied to clipboard!',
              gravity: ToastGravity.BOTTOM,
            );
          },
        ),
      ),
    );
  }
}
