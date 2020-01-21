import 'package:flutter/material.dart';

class SimpleRadio extends StatefulWidget {
  @override
  _SimpleRadioState createState() => _SimpleRadioState();
}

class _SimpleRadioState extends State<SimpleRadio> {

  int value;
  int _selected = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
      appBar: AppBar(
        title: Text("Radio Buttons"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 30.0),
            ),
            Text(
              "City",
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.blue
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Radio<int>(
                        activeColor: Colors.red,
                        value: 0,
                        groupValue: _selected,
                        onChanged: (value) {
                          _select(value, context);
                        }),
                    Text(
                      "Yangon",
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Radio<int>(
                        activeColor: Colors.red,
                        value: 1,
                        groupValue: _selected,
                        onChanged: (value) {
                          _select(value, context);
                        }),
                    Text(
                      "China",
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Radio<int>(
                        activeColor: Colors.red,
                        value: 2,
                        groupValue: _selected,
                        onChanged: (value) {
                          _select(value, context);
                        }),
                    Text(
                      "Bago",
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Radio<int>(
                        activeColor: Colors.red,
                        value: 3,
                        groupValue: _selected,
                        onChanged: (value) {
                          _select(value, context);
                        }),
                    Text(
                      "Mandalay",
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Radio<int>(
                        activeColor: Colors.red,
                        value: 4,
                        groupValue: _selected,
                        onChanged: (value) {
                          _select(value, context);
                        }),
                    Text(
                      "Singapore",
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Radio<int>(
                        activeColor: Colors.red,
                        value: 5,
                        groupValue: _selected,
                        onChanged: (value) {
                          _select(value, context);
                        }),
                    Text(
                      "USA",
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      )
    );
  }

  // calling when Item Selected
  void _select(int value, BuildContext context) {
    setState(() {
      _selected = value;
    });
    _scaffoldKey.currentState.showSnackBar(
        SnackBar(
          content: Text('Selected City'),
          duration: Duration(seconds: 2),
        ));
  }
}