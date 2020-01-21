import 'package:flutter/material.dart';
import 'package:ui_design_assignment/view/home_page.dart';
import 'package:ui_design_assignment/view/radiobutton/image_radio.dart';
import 'package:ui_design_assignment/view/radiobutton/simple_radio.dart';
class MyRadio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text('RadioButton'),
          ),
          body: Container(
            padding: EdgeInsets.only(left: 10.0, right: 10.0),
            child:ListView(
              children: <Widget>[
                ListTile(
                    title: Text('Simple RadioButton'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SimpleRadio()));
                    }),
                new Divider(
                  color: Colors.grey[600],
                ),
                ListTile(
                    title: Text("Image Radio Button"),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ImageRadio()));
                    }),
              ],
            ),
          ),
        );
  }
}
