import 'package:flutter/material.dart';

class SliverAppBarSample extends StatefulWidget {
  @override
  _SliverAppBarSampleState createState() => _SliverAppBarSampleState();
}

class _SliverAppBarSampleState extends State<SliverAppBarSample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: <Widget>[
        SliverAppBar(expandedHeight: 200,
        pinned: true,   // if we want to make it visible like toolbar
        flexibleSpace: FlexibleSpaceBar(title: Text("Slivers"),),),
        SliverList(delegate: SliverChildBuilderDelegate(
          (context,index){
            return Padding(padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Padding(padding: const EdgeInsets.all(10.0),
              child: Text("$index", style: TextStyle(fontSize: 32.0),),
              ),
            ),
            );
          }
        ),)
      ],)
    );
  }
}