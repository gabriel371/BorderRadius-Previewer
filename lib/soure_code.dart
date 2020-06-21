import 'package:flutter/material.dart';

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
    List<Text> code = [
      Text('Container('),
      Text('  height: 300,'),
      Text('  width: 300,'),
      Text('  decoration: BoxDecoration('),
      Text('    borderRadius: BorderRadius.only('),
      Text('      topLeft: Radius.circular(${widget.topLeftRadius.floor()}),'),
      Text('      topRight: Radius.circular(${widget.topRightRadius.floor()}),'),
      Text('      bottomLeft: Radius.circular(${widget.bottomLeftRadius.floor()}),'),
      Text('      bottomRight: Radius.circular(${widget.bottomRightRadius.floor()}),'),
      Text('    ),'),
      Text('    color: Colors.black,'),
      Text('  ),'),
      Text('  child: Column('),
      Text('    mainAxisAlignment: MainAxisAlignment.center,'),
      Text('    children: ['),
      Text('      Center('),
      Text('        child: Text('),
      Text('          \'I\'m a customizeable Container!\','),
      Text('          style: TextStyle(color: Colors.black),'),
      Text('        ),'),
      Text('      ),'),
      Text('    ],'),
      Text('  ),'),
      Text('),'),
    ];

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: GestureDetector(
        child: Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.grey[200],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: code,
          ),
        ),
      ),
    );
  }
}
