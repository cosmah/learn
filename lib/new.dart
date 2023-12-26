import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

var assetsImage = AssetImage('assets/landscape.jpg');
var image = Image(
  image: assetsImage,
  fit: BoxFit.cover,
);

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
              border: Border.all(
                  width: 2.0, color: const Color.fromARGB(255, 236, 165, 165)),
              image: DecorationImage(
                image: NetworkImage(
                  "https://i0.wp.com/mazima.ug/wp-content/uploads/2022/11/2022-08-07.jpg?fit=500%2C385&ssl=1",
                ),
                fit: BoxFit.cover,
              )),
          //importing image from the internet
          child: image,
          alignment: Alignment(0.5, 0.5),
        ),
      ),
    );
  }
}
