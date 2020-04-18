import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';

class SharedPreferenceSample extends StatefulWidget {
  @override
  _SharedPreferenceSampleState createState() => _SharedPreferenceSampleState();
}

class _SharedPreferenceSampleState extends State<SharedPreferenceSample> {

  String input, userName;

  @override
  void initState(){
    super.initState();
    getSharedPreferences();
  }

  Future<Null> storeInput(String input) async{
    await SharedPreferences.getInstance().then((prefs){
      setState(() {
        prefs.setString("userName", input);
      });
    });
  }
  Future<Null> getSharedPreferences() async{
    await SharedPreferences.getInstance().then((prefs){
      setState(() {
        userName = prefs.getString("userName");
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(userName==null?"No Name":userName)),
      body: Column(children: <Widget>[
        TextField(
          onChanged: (String value){
            input = value;
          },
        ),
        RaisedButton(onPressed: (){
          setState(() {
            storeInput(input);
          });
        },
        child: Text("Save Username"),)
      ],),

    );
  }
}