import 'package:flutter/material.dart';
class MyAppBar extends StatefulWidget {
  @override
  _MyAppBarState createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  AppBar _titleBar() => AppBar(
    title: Text("Title Bar"),
  );

  AppBar _autoLeadBar() => AppBar(
    title: Text("Autolead Bar"),
    automaticallyImplyLeading: false,
  );

  AppBar _leadingBar() => AppBar(
    title: Text("Leading Bar"),
    leading: InkWell(
      child: Icon(Icons.menu),
      onTap: () {
        print("click menu");
      },
    ),
  );

  AppBar _actionBar() => AppBar(
    title: Text("Action Bar"),
    actions: <Widget>[
      InkWell(
        child: Icon(Icons.search),
        onTap: () {
          print("click search");
        },
      ),
      SizedBox(width: 10),
      InkWell(
        child: Icon(Icons.more_vert),
        onTap: () {
          print("click more");
        },
      ),
      SizedBox(width: 20)
    ],
  );

  Widget _bottomBar() => AppBar(
    title: Text("Bottom Bar"),
    bottom: PreferredSize(
      child: Container(
        alignment: Alignment.center,
        color: Colors.red,
        constraints: BoxConstraints.expand(height: 50),
        child: Text(
          "bottom",
          style: TextStyle(fontSize: 30),
        ),
      ),
      preferredSize: Size(50, 50),
    ),
  );

  Widget _elevationBar() => AppBar(
    title: Text("elevation Bar"),
    elevation: 10,
  );

  Widget _backgroundBar() => AppBar(
    title: Text("BackgroundBar"),
    backgroundColor: Colors.purple,
  );

  Widget _brightBar() => AppBar(
    title: Text("Bright Bar"),
//        brightness: Brightness.dark,dark
  );

  Widget _iconThemeBar() => AppBar(
    title: Text("Icon Theme Bar"),
    iconTheme: IconThemeData(color: Colors.white, size: 20, opacity: 0.9),
  );

  Widget _textThemeBar() => AppBar(
    title: Text("Text Theme Bar"),
    textTheme:
    TextTheme(title: TextStyle(color: Colors.white, fontSize: 30)),
  );

  Widget _primaryBar() => AppBar(
    title: Text("Primary Bar"),
    primary: false,
  );

  Widget _centerBar() => AppBar(
    title: Text("Center Bar"),
    centerTitle: true,
  );

  Widget _spaceBar() => AppBar(
    title: Text("Space Bar"),
    titleSpacing: 20,
  );

  Widget _toolBar() => AppBar(
    title: Text("Tool Bar"),
    toolbarOpacity: 0.5,
  );

  Widget _bottomOpBar() => AppBar(
    title: Text("Bottom Open Bar"),
    bottomOpacity: 0.5,
    bottom: PreferredSize(
      child: Container(
        alignment: Alignment.center,
        color: Colors.red,
        constraints: BoxConstraints.expand(height: 50),
        child: Text(
          "bottom with  bottomOpacity = 0.5 ",
          style: TextStyle(fontSize: 20),
        ),
      ),
      preferredSize: Size(50, 50),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
//              title: Text("hello"),
            expandedHeight: 100,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("FlexbleSpaceBar"),
              centerTitle: false,
              collapseMode: CollapseMode.parallax,
              background: Container(
                color: Colors.red,
                constraints: BoxConstraints.expand(height: 100),
                child: Image.asset(
                  "assets/images/dance.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              SizedBox(
                height: 1000,
              ),
            ]),
          )
        ],
      ),
    );
  }
}
