import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My app",
      home: Kitintale(),
    );
  }
}

class Kitintale extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 219, 255, 12),
        onPressed: () {
          print("floating button widget");
        },
        child: Icon(Icons.add_a_photo_sharp),
      ),
      appBar: AppBar(
        title: Text("Welcome to kitintale Market"),
        centerTitle: true,
        backgroundColor: Colors.amber,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              print("home");
            },
          ),
          IconButton(
            icon: Icon(Icons.people),
            onPressed: () {
              print("friends");
            },
          ),
          IconButton(
            icon: Icon(Icons.message),
            onPressed: () {
              print("messages");
            },
          ),
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              print("notifictions");
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print("search");
            },
          ),
          IconButton(
            icon: Icon(Icons.video_chat),
            onPressed: () {
              print("video");
            },
          ),
        ],
      ),
      body: Center(
        child: Container(
          constraints: BoxConstraints.expand(width: 300.0),
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 88, 138, 245),
              borderRadius: BorderRadius.circular(30.0),
              border: Border.all(
                  width: 2.0, color: const Color.fromARGB(255, 236, 165, 165))),
          child: Text(
            "The one stop grossary in mutungo, come and we serve you.",
            style: TextStyle(
                color: Color.fromARGB(222, 0, 0, 0),
                fontSize: 22.0,
                fontWeight: FontWeight.bold),
          ),
          alignment: Alignment(0.0, 0.0),
        ),
      ),
    );
  }
}
