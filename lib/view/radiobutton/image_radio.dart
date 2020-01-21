import 'package:flutter/material.dart';
class ImageRadio extends StatefulWidget {
  @override
  _ImageRadioState createState() => _ImageRadioState();
}

class _ImageRadioState extends State<ImageRadio> {
  int _selected = 0;

  // calling Function when Item
  void onChange(int value) {
    setState(() {
      _selected = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Radio Buttons"),
      ),
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),
            Text("Following"),
            Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 10, top: 20),
                    ),
                    Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/natasha.jpg"),
                          fit: BoxFit.fill,
                        ),
                        borderRadius:
                        BorderRadius.all(Radius.circular(80.0)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                    ),
                    Expanded(
                        child: Text(
                          "Natasha",
                        )),
                    Radio<int>(
                        activeColor: Colors.red,
                        value: 0,
                        groupValue: _selected,
                        onChanged: (int value) {
                          onChange(value);
                        }),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
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
                          image: AssetImage("assets/images/diya.jpeg"),
                          fit: BoxFit.fill,
                        ),
                        borderRadius:
                        BorderRadius.all(Radius.circular(80.0)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                    ),
                    Expanded(
                        child: Text(
                          "Diya",
                        )),
                    Radio<int>(
                        activeColor: Colors.red,
                        value: 1,
                        groupValue: _selected,
                        onChanged: (int value) {
                          onChange(value);
                        }),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
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
                          image: AssetImage("assets/images/prince.png"),
                          fit: BoxFit.fill,
                        ),
                        borderRadius:
                        BorderRadius.all(Radius.circular(80.0)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                    ),
                    Expanded(
                        child: Text(
                          "Prince",
                        )),
                    Radio<int>(
                        activeColor: Colors.red,
                        value: 3,
                        groupValue: _selected,
                        onChanged: (int value) {
                          onChange(value);
                        }),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
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
                          image: AssetImage("assets/images/abhi.jpg"),
                          fit: BoxFit.fill,
                        ),
                        borderRadius:
                        BorderRadius.all(Radius.circular(80.0)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                    ),
                    Expanded(
                        child: Text(
                          "Abhi",
                        )),
                    Radio<int>(
                        activeColor: Colors.red,
                        value: 4,
                        groupValue: _selected,
                        onChanged: (int value) {
                          onChange(value);
                        }),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
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
                          image: AssetImage("assets/images/surali.jpg"),
                          fit: BoxFit.fill,
                        ),
                        borderRadius:
                        BorderRadius.all(Radius.circular(80.0)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                    ),
                    Expanded(
                        child: Text(
                          "Surali",
                        )),
                    Radio<int>(
                        activeColor: Colors.red,
                        value: 5,
                        groupValue: _selected,
                        onChanged: (int value) {
                          onChange(value);
                        }),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
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
                          image: AssetImage("assets/images/flutter.png"),
                          fit: BoxFit.fill,
                        ),
                        borderRadius:
                        BorderRadius.all(Radius.circular(80.0)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                    ),
                    Expanded(
                        child: Text(
                          "Ales",
                        )),
                    Radio<int>(
                        activeColor: Colors.red,
                        value: 6,
                        groupValue: _selected,
                        onChanged: (int value) {
                          onChange(value);
                        }),
                  ],
                ),
              ],
            )
          ],
        ),

      ),
    );
  }
}
