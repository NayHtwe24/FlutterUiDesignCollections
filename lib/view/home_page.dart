import 'package:flutter/material.dart';
import 'package:ui_design_assignment/view/alertbox/alertbox.dart';
import 'package:ui_design_assignment/view/appbar/appbar.dart';
import 'package:ui_design_assignment/view/button/buttons.dart';
import 'package:ui_design_assignment/view/checkbox/checkbox.dart';
import 'package:ui_design_assignment/view/radiobutton/radiobutton.dart';
import 'package:ui_design_assignment/view/textfield/all_inputs.dart';

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
        child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 1.0,
          padding: const EdgeInsets.all(4.0),
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
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
                      style: TextStyle(fontFamily: "MyanmarSabae",
                      fontSize: 20),
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
                  style: TextStyle(fontFamily: "MyanmarSabae",
                      fontSize: 20),
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
                  style: TextStyle(fontFamily: "MyanmarSabae",
                      fontSize: 20),
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
                  style: TextStyle(fontFamily: "MyanmarSabae",
                      fontSize: 20),
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
                  style: TextStyle(fontFamily: "MyanmarSabae",
                      fontSize: 20),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: OutlineButton(
                padding: EdgeInsets.all(20.0),
                highlightedBorderColor: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AllInputWidgets()));
                },
                child: Text(
                  "Text Field",
                  style: TextStyle(fontFamily: "MyanmarSabae",
                      fontSize: 20),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
