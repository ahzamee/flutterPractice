import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class FlutterIntermediate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Notification"),
      ),
      body: iOSWidgets(context),
    );
  }
}


//if we want to build different button for iOS and android 
Widget iOSWidgets(context){
  return Theme.of(context).platform == TargetPlatform.android?
      androidLayout()
      :
      iosLayout()
      ;
}

androidLayout() {
  return RaisedButton(
    color: Colors.green,
    child: Text("android"),
    onPressed: (){},
  );
}

iosLayout() {
  return CupertinoButton(
    color: Colors.green,
    child: Text("iOS"),
    onPressed: (){},
  );
}

//design layout with expanded and flex to organise layout
Widget expandedFlex(){
  return Column(
    children: <Widget>[
      Row(
        textDirection: TextDirection.ltr,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.blue,
              height: 200.0,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.red,
              height: 200.0,
            ),
          )
        ],
      ),
      Row(
        textDirection: TextDirection.ltr,
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.red,
              height: 100.0,
            ),
          ),
          Expanded(
            flex: 7,
            child: Container(
              color: Colors.green,
              height: 100.0,
            ),
          )
        ],
      )
    ],
  );
}

// design app with gridview. just call Gridview() in the body
Widget gridView(){
  return GridView.count(
    crossAxisCount: 2,
    children: <Widget>[
      Container(
        color: Colors.red,
        child: Text("1"),
      ),
      Container(
        color: Colors.blue,
        child: Text("2"),
      ),
      Container(
        color: Colors.green,
        child: Text("3"),
      ),
      Container(
        color: Colors.red,
        child: Text("4"),
      ),
      Container(
        color: Colors.blue,
        child: Text("5"),
      ),
      Container(
        color: Colors.green,
        child: Text("6"),
      )
    ],
  );
}
