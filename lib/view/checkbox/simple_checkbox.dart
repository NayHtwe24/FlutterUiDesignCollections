import 'package:flutter/material.dart';
class SimpleCheckBox extends StatefulWidget {
  @override
  _SimpleCheckBoxState createState() => _SimpleCheckBoxState();
}

class _SimpleCheckBoxState extends State<SimpleCheckBox> {
  //value of checkBoxes
  bool StudyVal = false;
  bool DanceVal = false;
  bool SingVal = false;
  bool TravellingVal = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple CheckBox"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 30.0),
            ),
            Text(
              "Hobby ",
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Checkbox(
                      value: StudyVal,
                      activeColor: Colors.red,
                      onChanged: (bool val) {
                        setState(() {
                          StudyVal = val;
                        });
                      },
                    ),
                    Text("Study"),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Checkbox(
                      value: DanceVal,
                      activeColor: Colors.red,
                      onChanged: (bool val) {
                        setState(() {
                          DanceVal = val;
                        });
                      },
                    ),
                    Text("Dance"),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Checkbox(
                      value: SingVal,
                      activeColor: Colors.red,
                      onChanged: (bool val) {
                        setState(() {
                          SingVal = val;
                        });
                      },
                    ),
                    Text("Singing"),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Checkbox(
                      value: TravellingVal,
                      activeColor: Colors.red,
                      onChanged: (bool val) {
                        setState(() {
                          TravellingVal = val;
                        });
                      },
                    ),
                    Text("Travelling"),
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
