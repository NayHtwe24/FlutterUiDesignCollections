import 'package:flutter/material.dart';
import 'package:ui_design_assignment/view/checkbox/image_checkbox.dart';
import 'package:ui_design_assignment/view/checkbox/list_checkbox.dart';
import 'package:ui_design_assignment/view/checkbox/simple_checkbox.dart';
class MyCheckBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Check Boxes"),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 10.0, right: 10.0),
        child: ListView(
          children: <Widget>[
            ListTile(
                title: Text('Simple CheckBox'),
                onTap: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => SimpleCheckBox()));
                }
            ),
            Divider(
              color: Colors.grey[600],
            ),
            ListTile(
                title: Text('Image with CheckBox'),
                onTap: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => ImageCheckBox()));
                }
            ),
            Divider(
              color: Colors.grey[600],
            ),
            ListTile(
                title: Text('List Of CheckBox'),
                onTap: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => ListCheckBox()));
                }
            ),
            Divider(
              color: Colors.grey[600],
            ),
          ],
        ),
      ),
    );
  }
}
