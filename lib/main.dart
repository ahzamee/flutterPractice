import 'package:flutter/material.dart';

void main(){
  runApp(new ListViewWidget());
}

class ListViewWidget extends StatefulWidget {
  @override
  _ListViewWidgetState createState() => _ListViewWidgetState();
}

class _ListViewWidgetState extends State<ListViewWidget> {
  List<int> items = new List();

  @override
  void initState() {
    for(int i = 0;i<50; i++){
      items.add(i);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Dummy Application",
      home: new Scaffold(
        appBar: new AppBar(title : new Text("ListView widget"),),
        body: new ListView.builder(
            itemCount: items.length,
            itemBuilder: (BuildContext context, int index){
              return new ListTile(
                  title: new Text("item no: $index"),
                  trailing: new Icon(Icons.arrow_forward_ios));
            }),
      ),
    );
  }
}


/*class _ListViewWidgetState extends State<ListViewWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ListView",
      home: new Scaffold(
        appBar: new AppBar(title: new Text("ListView Widget"),),
        body: new ListView(
          children: <Widget>[
            new ListTile(
              title: new Text("items 1"),
              trailing: new Icon(Icons.arrow_forward_ios),
            ),
            new ListTile(
              title: new Text("items 2"),
              trailing: new Icon(Icons.arrow_forward_ios),
            ),
            new ListTile(
              title: new Text("items 3"),
              trailing: new Icon(Icons.arrow_forward_ios),
            )
          ],
        ),
      ),
    );
  }
}*/


/*class RowColumn extends StatelessWidget {
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
}*/

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
