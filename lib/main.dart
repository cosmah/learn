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
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Icon(
                  Icons.mail_outlined,
                  color: Colors.blue,
                  size: 50.0,
                ),
                Text(
                  "Mail",
                  style: TextStyle(fontSize: 30),
                ),
                Icon(
                  Icons.phone_android,
                  color: Colors.blue,
                  size: 50.0,
                ),
                Text("Call", style: TextStyle(fontSize: 30)),
                Icon(
                  Icons.music_video,
                  color: Colors.blue,
                  size: 50.0,
                ),
                Text(
                  "music",
                  style: TextStyle(fontSize: 30),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        leading: Icon(Icons.map),
                        title: Text("Map"),
                        onTap: () {
                          print("map");
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.playlist_add_outlined),
                        title: Text("Play list"),
                        onTap: () {
                          print("list");
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.fire_extinguisher),
                        title: Text("fire"),
                        onTap: () {
                          print("fire");
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ]),
    );
  }
}
