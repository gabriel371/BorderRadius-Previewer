import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double topLeftRadius = 0.0;
  double topRightRadius = 0.0;
  double bottomLeftRadius = 0.0;
  double bottomRightRadius = 0.0;

  TextEditingController topLeftController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.1),
            Padding(
              padding: EdgeInsets.only(left: 5),
              child: Text(
                'BorderRadius Previewer',
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            Center(
              child: Column(
                children: [
                  Container(
                    height: 300,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(topLeftRadius),
                        topRight: Radius.circular(topRightRadius),
                        bottomLeft: Radius.circular(bottomLeftRadius),
                        bottomRight: Radius.circular(bottomRightRadius),
                      ),
                      color: Colors.grey[400],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Expanded(
                            child: Text(
                              'I\'m a customizeable Container!',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                  Column(
                    children: [
                      Text('Top Left'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.15,
                            child: Text(
                              topLeftRadius.floor().toString(),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.75,
                            child: Slider(
                              value: topLeftRadius,
                              max: 300.0,
                              min: 0.0,
                              onChanged: (radius) =>
                                  setState(() => topLeftRadius = radius),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text('Top Right'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.15,
                            child: Text(
                              topRightRadius.floor().toString(),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.75,
                            child: Slider(
                              value: topRightRadius,
                              max: 300.0,
                              min: 0.0,
                              onChanged: (radius) =>
                                  setState(() => topRightRadius = radius),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text('Bottom Left'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.15,
                            child: Text(
                              bottomLeftRadius.floor().toString(),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.75,
                            child: Slider(
                              value: bottomLeftRadius,
                              max: 300.0,
                              min: 0.0,
                              onChanged: (radius) =>
                                  setState(() => bottomLeftRadius = radius),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text('Bottom Right'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.15,
                            child: Text(
                              bottomRightRadius.floor().toString(),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.75,
                            child: Slider(
                              value: bottomRightRadius,
                              max: 300.0,
                              min: 0.0,
                              onChanged: (radius) =>
                                  setState(() => bottomRightRadius = radius),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
