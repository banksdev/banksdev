import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Frontpage(),
    );
  }
}

class Frontpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      CircleAvatar(
          backgroundImage: Image.asset("assets/profile.jpg").image,
          radius: screenSize.width < 1000 ? 100 : 250),
      SizedBox(height: 50),
      Text(
        "Hi, I'm Alexander, but you can call me Banks",
        style: TextStyle(color: Colors.black),
      )
    ]);
  }
}
