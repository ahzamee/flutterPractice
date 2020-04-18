import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

import 'package:udemypracapp/model/post.dart';


class ShowJsonData extends StatefulWidget {
  @override
  _ShowJsonDataState createState() => _ShowJsonDataState();
}

class _ShowJsonDataState extends State<ShowJsonData> {

  Future<List<Post>> showPost() async {
    var data = await http.get("http://jsonplaceholder.typicode.com/posts");
    var dataDecode = json.decode(data.body);
    List<Post> posts = List();
    dataDecode.forEach((post){
      String title = post["title"];
      if(title.length >25){
        title = post["title"].substring(0,25)+" ...";
      }
      String body = post["body"].replaceAll(RegExp(r'\n')," ");
      posts.add(Post(title,body));
    });
    return posts;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Json"),),
    body: Padding(
      padding: const EdgeInsets.all(16.0),
      child: FutureBuilder(
      future: showPost(),
      builder: (context, snapshot){
        if(snapshot.hasData){
          return ListView.builder(
          itemCount: snapshot.data == null ? 0 : snapshot.data.length,
          itemBuilder: (context, index){
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(snapshot.data[index].title, style: TextStyle(fontSize: 30.0),),
                  Divider(),
                  Text(snapshot.data[index].text, style: TextStyle(fontSize: 15.0),),
                  Divider(),
                  RaisedButton(child: Text("Read more..."),onPressed: (){},)
                ],
              ),) 
            );
          }
        );
        }
        else{
          return showLoader();
        }
      },
      ),
      )
    );
  }
  showLoader(){
      return Align(
        alignment: FractionalOffset.center,
        child: CircularProgressIndicator(),);
    }
}
