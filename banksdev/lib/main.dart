import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:html' as html;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: "Raleway"),
      home: Frontpage(),
    );
  }
}

class Frontpage extends StatelessWidget {
  final iconButtons = [
    IconButton(
        iconSize: 100,
        icon: FaIcon(FontAwesomeIcons.github),
        onPressed: () =>
            html.window.open("https://github.com/banksdev", "Github")),
    IconButton(
        iconSize: 100,
        icon: FaIcon(FontAwesomeIcons.instagram),
        onPressed: () =>
            html.window.open("https://instagram.com/apexicph", "Github")),
    IconButton(
        iconSize: 100,
        icon: FaIcon(FontAwesomeIcons.linkedin),
        onPressed: () => html.window
            .open("https://www.linkedin.com/in/banksdev", "LinkedIn")),
  ];

  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;
    var isLandscape = orientation == Orientation.landscape;

    var socials = isLandscape
        ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: iconButtons)
        : Column(
            children: iconButtons,
          );

    return Scaffold(
        body: Center(
            child: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
          SizedBox(height: isLandscape ? 0 : 10),
          CircleAvatar(
            backgroundImage: Image.asset("assets/images/profile.jpg").image,
            radius: isLandscape ? 200 : 150,
          ),
          SizedBox(height: 50),
          Center(
              child: Text(
            "Hi, I'm Alexander, but you can call me Banks",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 28.0, color: Colors.black),
          )),
          SizedBox(height: 50),
          Padding(padding: EdgeInsets.fromLTRB(100, 0, 100, 0), child: socials)
        ]))));
  }
}
