import 'package:flutter/material.dart';
class ListCheckBox extends StatefulWidget {
  @override
  _ListCheckBoxState createState() => _ListCheckBoxState();
}

class _ListCheckBoxState extends State<ListCheckBox> {

  List<String> inputs = List<String>();
  List<bool> check = List<bool>();

  @override

  void initState() {
    setState(() {
      //value of CheckBoxs
      check.add(true);
      check.add(false);
      check.add(true);
      check.add(false);
      check.add(false);
      check.add(false);
      check.add(false);
      check.add(true);

      // Items of CheckBoxs List
      inputs.add("Movie");
      inputs.add("Food");
      inputs.add("Song");
      inputs.add("Dance");
      inputs.add("Actor");
      inputs.add("Artist");
      inputs.add("Travelling");
      inputs.add("Study");
    });
  }

  // calling function when item Slect or Deselect
  void ItemChange(bool val, int index, BuildContext context) {
    setState(() {
      check[index] = val;
    });
    if (check[index] == true) {
      Scaffold.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.black,
          content: Text("Select ${inputs[index]}"),
          duration: Duration(seconds: 1),
        ),
      );
    } else {
      Scaffold.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.black,
          content: Text("DeSelect ${inputs[index]}"),
          duration: Duration(seconds: 1),
        ),
      );
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Check Box"),
      ),
      body: ListView.builder(
          itemCount: inputs.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: Container(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    CheckboxListTile(
                        value: check[index],
                        activeColor: Colors.red,
                        title: Text('${inputs[index]}'),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool val) {
                          ItemChange(val, index, context);
                        })
                  ],
                ),
              ),
            );
          }),
    );
  }
}
