import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:udemypracapp/pageViewSample.dart';
import 'package:udemypracapp/sharedPreferenceSample.dart';
import 'package:udemypracapp/showJsonData.dart';
import 'package:udemypracapp/sliverAppBarSample.dart';
import 'flutterIntermidiate.dart';
import 'userDetails.dart';
import 'notification.dart';

void main() {
  runApp(new MaterialApp(home: new TextFieldWidget()));
}

class TextFieldWidget extends StatefulWidget {
  @override
  _TextFieldWidgetState createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  final GlobalKey<ScaffoldState> _skey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _skey,
      appBar: new AppBar(
        title: new Text("Flutter Practice"),
      ),

      //making drawer with user info
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("Hussain Zamee"),
              accountEmail: new Text("ahzamee@gmail.com"),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.black54,
                child: new Text("Z"),
              ),
              decoration: new BoxDecoration(color: Colors.blue),
              otherAccountsPictures: <Widget>[
                new CircleAvatar(
                  backgroundColor: Colors.black38,
                  child: new Text("A"),
                ),
                new CircleAvatar(
                  backgroundColor: Colors.black38,
                  child: new Text("H"),
                )
              ],
            ),
            new ListTile(
              title: new Text("User Details"),
              trailing: new Icon(Icons.arrow_forward_ios),
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => new DiffWidgets())),
            ),
            new ListTile(
              title: new Text("Notification"),
              trailing: new Icon(Icons.arrow_forward_ios),
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) =>
                  new UserNotification("User Notifications"))),
            ),
            new ListTile(
              title: new Text("Close"),
              trailing: new Icon(Icons.close),
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Center(
            child: new RaisedButton(
              onPressed: () {
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => new FlutterIntermediate()));
              },
              child: new Text("Flutter Intermediate"),
            ),
          ),
          new Center(
            child: new RaisedButton(
              onPressed: () {
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => new DiffWidgets()));
              },
              child: new Text("Widgets Sample"),
            ),
          ),
          new Center(
            child: new RaisedButton(
              onPressed: () {
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) =>
                    new ShowJsonData()));
              },
              child: new Text("Show JSON Data"),
            ),
          ),
          new Center(
            child: new RaisedButton(
              onPressed: () {
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) =>
                    new PageViewSample()));
              },
              child: new Text("PageView"),
            ),
          ),
          new Center(
            child: new RaisedButton(
              onPressed: () {
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) =>
                    new SharedPreferenceSample()));
              },
              child: new Text("SharedPreference Sample"),
            ),
          ),
          new Center(
            child: new RaisedButton(
              onPressed: () {
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) =>
                    new SliverAppBarSample()));
              },
              child: new Text("SliverAppBar Sample"),
            ),
          ),
          new Center(
            child: new RaisedButton(
              onPressed: () {
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) =>
                    new UserNotification("User Notifications")));
              },
              child: new Text("Notification Panel"),
            ),
          ),
        ],
      ),
    );
  }
}

/*class BasicAppBarApplication extends StatefulWidget {
  @override
  _BasicAppBarApplicationState createState() => _BasicAppBarApplicationState();
}

class _BasicAppBarApplicationState extends State<BasicAppBarApplication> with SingleTickerProviderStateMixin{

  String mtext = '';

  TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.green,
        title: new Text("AppBar Widget"),
        leading: new Icon(Icons.menu),
        elevation: 20.0,
        toolbarOpacity: 0.8,
        bottomOpacity: 0.5,
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.arrow_forward), onPressed: (){setState(() {
            mtext = "this is Arrow icon button";
          });}),
          new IconButton(icon: new Icon(Icons.close), onPressed: (){setState(() {
            mtext = "this is Close icon button";
          });}),
        ],

        bottom: new TabBar(
          controller: _tabController,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.home),),
            new Tab(icon: new Icon(Icons.supervisor_account),),
            new Tab(icon: new Icon(Icons.details),),
          ],
        ),
      ),
      body: new Center( //only for appbar
        child: new Text(mtext),
      ),
      
      body: new TabBarView(controller: _tabController,
          children: <Widget>[
            new Center(child: new Text("This is home Page"),),
            new Center(child: new Text("This is User Account"),),
            new Center(child: new Text("This is Details Page"),)
          ],
      ),
      bottomNavigationBar: new Material(
        color: Colors.blue,
        child: new TabBar(
          controller: _tabController,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.home),),
            new Tab(icon: new Icon(Icons.supervisor_account),),
            new Tab(icon: new Icon(Icons.details),),
          ],
        ),
      ),
    );
  }
}*/

/*class GridViewApplication extends StatefulWidget {
  @override
  _GridViewApplicationState createState() => _GridViewApplicationState();
}

class _GridViewApplicationState extends State<GridViewApplication> {

  List<int> items = new List();

  @override
  void initState() {
    for(int i = 0; i<50; i++){
      items.add(i);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new GridView.builder(
          itemCount: items.length,
          gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
          itemBuilder: (BuildContext context, int index){
            return new Card(
              color: Colors.blue,
              child: new Text("values: $index"),
            );
          }),
    );
  }
}*/

/*
class _GridViewApplicationState extends State<GridViewApplication> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Stack(
        alignment: Alignment.center,
        children: <Widget>[
          new Card(color: Colors.yellow, child: new Padding(padding: const EdgeInsets.all(200.0),)),
          new Card(color: Colors.red, child: new Padding(padding: const EdgeInsets.all(100.0),)),
          new Card(color: Colors.green, child: new Padding(padding: const EdgeInsets.all(50.0),)),
          new Card(color: Colors.blue, child: new Padding(padding: const EdgeInsets.all(30.0),)),
          new Card(color: Colors.brown, child: new Padding(padding: const EdgeInsets.all(10.0),)),
        ],
      ),
    );
  }
}
*/

/*
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
      title: "Dummy GridViewApplication",
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
*/

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
      title: "MyGridViewApplication",
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

/*class GridViewApplication extends StatefulWidget {
  @override
  _applicationState createState() => _applicationState();
}

class _applicationState extends State<GridViewApplication> {

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
