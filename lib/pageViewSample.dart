import 'package:flutter/material.dart';

class PageViewSample extends StatefulWidget {
  @override
  _PageViewSampleState createState() => _PageViewSampleState();
}

class _PageViewSampleState extends State<PageViewSample> {

  Widget builtPage(String text, Color color){
    return Center(
      child: Text(
        text,
        style: TextStyle(fontSize: 80.0, color: color),
      ),
    );
  }

  Widget buildPageView(){
    return PageView(
      children: <Widget>[
        builtPage("This ", Colors.blueGrey),
        builtPage("is ", Colors.blue),
        builtPage("Zamee ", Colors.blueAccent),
      ],
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildPageView()
    );
  }
}