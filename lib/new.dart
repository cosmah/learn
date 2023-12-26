import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hello",
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //f;loating action button
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 255, 0, 0),
        onPressed: () {
          print("floating action button");
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Text("Cosmah's Lecture"),
        centerTitle: true,
        backgroundColor: Colors.amber,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                print("search");
              }),
          IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                print("menu");
              }),
          IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                print("settings");
              }),
        ],
      ),

      //text widget
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Text(
          "Hello World",
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 0, 0, 0)),
        ),
      ),
    );
  }
}
