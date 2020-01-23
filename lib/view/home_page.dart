import 'package:flutter/material.dart';
import 'package:ui_design_assignment/view/alertbox/alertbox.dart';
import 'package:ui_design_assignment/view/appbar/appbar.dart';
import 'package:ui_design_assignment/view/button/buttons.dart';
import 'package:ui_design_assignment/view/checkbox/checkbox.dart';
import 'package:ui_design_assignment/view/radiobutton/radiobutton.dart';

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.school),
        ),
        title: Text("UI Design Pattern Collections"),
      ),
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            Container(
                  padding: EdgeInsets.all(10.0),
                  child: OutlineButton(
                    padding: EdgeInsets.all(20.0),
                    highlightedBorderColor: Colors.blue[800],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MyButton()));
                    },
                    child: Text(
                      "Buttons",
                    ),
                  ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: OutlineButton(
                padding: EdgeInsets.all(20.0),
                highlightedBorderColor: Colors.blue[900],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => simpleAlert()));
                },
                child: Text(
                  "Alert Box",
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: OutlineButton(
                padding: EdgeInsets.all(20.0),
                highlightedBorderColor: Colors.blue[900],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MyRadio()));
                },
                child: Text(
                  "Radio Button",
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: OutlineButton(
                padding: EdgeInsets.all(20.0),
                highlightedBorderColor: Colors.blue[900],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MyCheckBox()));
                },
                child: Text(
                  "CheckBox",
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: OutlineButton(
                padding: EdgeInsets.all(20.0),
                highlightedBorderColor: Colors.blue[800],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MyAppBar()));
                },
                child: Text(
                  "App Bar",
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
