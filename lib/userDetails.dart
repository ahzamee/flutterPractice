import 'package:flutter/material.dart';

class DiffWidgets extends StatefulWidget {
  @override
  _DiffWidgetsState createState() => _DiffWidgetsState();
}

class _DiffWidgetsState extends State<DiffWidgets> {
  String mtext = "";
  bool cbool = false;
  int rvalue = 0;
  double svalue = 0.0;
  SimpleDialog _simpleDialog;
  final GlobalKey<ScaffoldState> _skey = new GlobalKey<ScaffoldState>();

  void snackBar(){
    _skey.currentState.showSnackBar(new SnackBar(
      content: new Text("SnackBar Activated"),
      action: SnackBarAction(label: "ok", onPressed: (){}),
      ));
  }

  void showBottomSheet(){
    showModalBottomSheet(context: context, 
    builder: (builder){
      return Container(
        height: 50.0,
        color: Colors.blue,
        child: Center(
          child: Text("Bottom Sheet Modal"),),
        );
    }
    );
  }

  void radioBtMethod(value){
    setState(() {
      rvalue = value;
    });
  }

  void sliderMethod(value){
    setState(() {
      svalue = value;
      mtext = value.toString();
    });
  }

  void switchMethod(value){
    setState(() {
      cbool = value;
      mtext = value.toString();
    });
  }

  void method(value){
    setState(() {
      mtext = value;
    });
  }

  void dialog(){
    showDialog(
        context: context,
        child: new AlertDialog(
          title: new Text("Warning"),
          content: new Text("Boom!!! there is nothing for you"),
          actions: <Widget>[
            new IconButton(icon: new Icon(Icons.close), onPressed: (){Navigator.pop(context);})
          ],
        )
    );
  }

  void sDialog(){
    _simpleDialog = new SimpleDialog(
      title: new Text("Choose any from below: "),
      children: <Widget>[
        new SimpleDialogOption(child: new Text("Yes"),onPressed: (){print("yes");},),
        new SimpleDialogOption(child: new Text("No"),onPressed: (){print("no");},),
        new SimpleDialogOption(child: new Text("Close"),onPressed: (){Navigator.pop(context);},)
      ],
    );
    showDialog(context: context, child: _simpleDialog);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _skey,
      appBar: new AppBar(
        title: new Text("TextFieldExample"),
      ),

      body: new Column(
        children: <Widget>[
          new TextField(
            onChanged: (String txt){
              setState(() {
                mtext = txt;
              });
            },
            decoration: new InputDecoration(hintText: "your name",labelText: "Full Name"),
          ),
          new Text(mtext),

          //working with buttons
          new RaisedButton(onPressed: (){
            snackBar();
          }, child: new Text("Show SnackBar"),),
          new RaisedButton(onPressed: (){
            showBottomSheet();
          }, child: new Text("Show Bottom Sheet"),),
          new RaisedButton(onPressed: (){
            dialog();
          }, child: new Text("Show Dialog"),),
          new FlatButton(onPressed: (){
            sDialog();
          }, child: new Text("Show Custom Dialog")),

          //working with checkbox
          new Checkbox(
              value: cbool,
              onChanged: (bool cbl){
                setState(() {
                  cbool = cbl;
                  print(cbool);
                });
              }),

          //working with Radio Button
          new Radio(value: 1, groupValue: rvalue, onChanged: (int rval){
            radioBtMethod(rval); }),
          new Radio(value: 2, groupValue: rvalue, onChanged: (int rval){
            radioBtMethod(rval); }),
          new Radio(value: 3, groupValue: rvalue, onChanged: (int rval){
            radioBtMethod(rval); }),

          //working with slider
          new Slider(value: svalue,min: 0,max: 10, onChanged: (double value){
            sliderMethod(value);
          }),

          //working with switch button
          new Switch(value: cbool, onChanged: (bool value){
            switchMethod(value);
          })
        ],
      ),
    );
  }
}

