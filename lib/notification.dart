import 'package:flutter/material.dart';

class UserNotification extends StatelessWidget {
  final String mText;

  UserNotification(this.mText);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: new Text("Notification"),),
      body: new Center(
        child: new Text(mText),
      ),
    );
  }
}