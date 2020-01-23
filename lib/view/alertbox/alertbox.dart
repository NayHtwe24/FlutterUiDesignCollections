import 'package:flutter/material.dart';
import 'package:ui_design_assignment/view/home_page.dart';

// ignore: camel_case_types
class simpleAlert extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _simpleAlert();
  }
}
class _simpleAlert extends State<simpleAlert> {
  @override
  final userName = TextEditingController();

  Widget build(BuildContext context) {
    return new Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          title: Text("Alert Boxs"),
          backgroundColor: Colors.blue,
        ),
        body: Container(
            alignment: Alignment.center,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ButtonTheme(
                    minWidth: 250.0,
                    height: 40.0,
                    child: RaisedButton(
                      color: Colors.red,
                      elevation: 20,
                      child: Text(
                        "Click Me",
                      ),
                      onPressed: () {
                        _simpleAlertBox(
                            "Simple Alert Box !");
                      },
                    ),
                  ),
                  ButtonTheme(
                    minWidth: 250.0,
                    height: 40.0,
                    child: RaisedButton(
                      color: Colors.red,
                      elevation: 20,
                      child: Text(
                        "Ok & Cancel Alert"
                      ),
                      onPressed: () {
                        _okCancelAlert(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam eget.");
                      },
                    ),
                  ),
                  ButtonTheme(
                    minWidth: 250.0,
                    height: 40.0,
                    child: RaisedButton(
                      color: Colors.red,
                      elevation: 20,
                      child: Text(
                        "Alert with TextBox",
                      ),
                      onPressed: () {
                        _textFieldAlertBox(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam eget.");
                      },
                    ),
                  ),
                ])));
  }


  void _simpleAlertBox(String value) {
    showDialog(
        context: context,
        builder: (context) =>
            AlertDialog(
              title: Text(
                "Alert!",
              ),
              content: Text(value),
              actions: <Widget>[
                FlatButton(
                  child: Text(
                    "Ok",
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ));
  }
  void _okCancelAlert(String value) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("Alert!"),
          content: Text(value),
          actions: <Widget>[
            Row(
              children: <Widget>[
                FlatButton(
                    child: Text(
                      "Cancel",
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    }),
                FlatButton(
                  child: Text(
                   "Ok",
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            )
          ],
        ));
  }
  void _textFieldAlertBox(String value) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("Alert!"),
          content: Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: TextField(
                  autofocus: true,
                  decoration: InputDecoration(
                      labelText: 'Full Name', hintText: 'eg. John Smith'),
                ),
              )
            ],
          ),
          actions: <Widget>[
            FlatButton(
                child: Text(
                  "Cancel",
                ),
                onPressed: () {
                  Navigator.pop(context);
                }),
            FlatButton(
                child: Text(
                  "Done",
                ),
                onPressed: () {
                  Navigator.pop(context);
                })
          ],
        ));
  }
}
