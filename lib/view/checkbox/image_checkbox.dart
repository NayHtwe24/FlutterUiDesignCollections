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

      ),
    );
  }
}
