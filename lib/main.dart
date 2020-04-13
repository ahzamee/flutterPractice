import 'package:flutter/material.dart';

void main(){
  runApp(new Application());
}

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MyApplication",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Row & Column"),
          backgroundColor: Colors.black, 
        ),
        body: new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text("this"),
            new Text("is"),
            new Text("zamee"),
            new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text("new Column"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


/*class Application extends StatefulWidget {
  @override
  _applicationState createState() => _applicationState();
}

class _applicationState extends State<Application> {

  String str = '';
  @override
  void initState() {
    str = "Press this button";
    super.initState();
  }

  void method(){
    setState(() {
      str = "Button has been clicked";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Statefull",
      home: new Scaffold(
        body: new Center(
          child: new RaisedButton(onPressed: (){method();}, child: Text("Raised Button"),),
        ),
      ),
    );
  }
}*/


/*class application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "stateless",
      home: Scaffold(
        body: new Container(
          color: Colors.blueAccent,
          child: new Container(
            color: Colors.red,
            margin: new EdgeInsets.all(30.0),
          ),
        ),
      ),
    );
  }
}*/
