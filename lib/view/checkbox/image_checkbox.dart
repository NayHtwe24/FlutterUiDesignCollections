import 'package:flutter/material.dart';
class ImageCheckBox extends StatefulWidget {
  @override
  _ImageCheckBoxState createState() => _ImageCheckBoxState();
}

class _ImageCheckBoxState extends State<ImageCheckBox> {

  // Checked value for CheckBoxes
  bool DanceVal = true;
  bool SingVal = false;
  bool ReadVal = false;
  bool StudyVal = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image CheckBox"),
      ),
      body: Container(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 30.0),
              ),
              Text("Hobby"),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 30),
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                      ),
                      Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/dance.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                      ),
                      Expanded(
                          child: Text(
                            "Dance",
                          )),
                      Checkbox(
                        value: DanceVal,
                        activeColor: Colors.red,
                        onChanged: (val) {
                          setState(() {
                            DanceVal = val;
                          });
                        },
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 30),
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                      ),
                      Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/sing.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                      ),
                      Expanded(
                          child: Text(
                            "Singing",
                          )),
                      Checkbox(
                        value: DanceVal,
                        activeColor: Colors.red,
                        onChanged: (val) {
                          setState(() {
                            DanceVal = val;
                          });
                        },
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 30),
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                      ),
                      Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/reading.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                      ),
                      Expanded(
                          child: Text(
                            "Reading",
                          )),
                      Checkbox(
                        value: DanceVal,
                        activeColor: Colors.red,
                        onChanged: (val) {
                          setState(() {
                            DanceVal = val;
                          });
                        },
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 30),
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                      ),
                      Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/study.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                      ),
                      Expanded(
                          child: Text(
                            "Studying",
                          )),
                      Checkbox(
                        value: DanceVal,
                        activeColor: Colors.red,
                        onChanged: (val) {
                          setState(() {
                            DanceVal = val;
                          });
                        },
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
      ),
    );
  }
}
