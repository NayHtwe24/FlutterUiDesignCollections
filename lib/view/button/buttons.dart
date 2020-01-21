import 'package:flutter/material.dart';
class MyButton extends StatefulWidget {
  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Buttons Collections",
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(bottom: 10.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.pink, width: 2.0),
            ),
            child: FlatButton(
              onPressed: () {},
              child: Text("Border"),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              border: Border.all(color: Colors.pink, width: 2.0),
            ),
            child: FlatButton(
              onPressed: () {},
              child: Text("Rounded Border"),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.pink, width: 2.0),
              color: Colors.pink[50],
            ),
            child: FlatButton(
              onPressed: () {},
              child: Text("Filled Color Button"),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              border: Border.all(color: Colors.pink, width: 2.0),
              color: Colors.indigo[50],
            ),
            child: FlatButton(
              onPressed: () {},
              child: Text("Filled Color Round Button"),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10.0),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.blue[800],
                  Colors.blue[100],
                ],
                begin: FractionalOffset.topLeft,
                end: FractionalOffset.bottomRight,
              ),
              borderRadius: BorderRadius.circular(30.0),
              border: Border.all(color: Colors.pink, width: 2.0),
              color: Colors.indigo[50],
            ),
            child: FlatButton(
              onPressed: () {},
              child: Text("Gradient Color Round Button",
              style: TextStyle(
                color: Colors.white
              ),),
            ),
          ),
        ],
      ),
    );
  }
}
