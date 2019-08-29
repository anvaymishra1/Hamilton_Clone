import 'package:flutter/material.dart';
import 'package:hamiltonclone/pages/lottery.dart';
import 'package:hamiltonclone/pages/hamcam.dart';
import 'package:hamiltonclone/pages/karaoke.dart';
import 'package:hamiltonclone/pages/merch.dart';
import 'package:hamiltonclone/pages/news.dart';
import 'package:hamiltonclone/pages/sticker.dart';
import 'package:hamiltonclone/pages/trivia.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          child: ListView(
        children: <Widget>[
          ListTile(
              leading: Icon(Icons.close),
              onTap: () {
                Navigator.of(context).pop();
              }),
          ListTile(
              title: Text("TODAY"),
              leading: Icon(Icons.close),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => HomePage()));
              }),
          ListTile(
              title: Text("LOTTERY"),
              leading: Icon(Icons.album),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => Lottery()));
              }),
          ListTile(
              title: Text("TRIVIA"),
              leading: Icon(Icons.close),
              onTap: () {
                Navigator.of(context).pop();
              }),
          ListTile(
              title: Text("KARAOKE"),
              leading: Icon(Icons.close),
              onTap: () {
                Navigator.of(context).pop();
              }),
          ListTile(
              title: Text("#HAMCAM"),
              leading: Icon(Icons.close),
              onTap: () {
                Navigator.of(context).pop();
              }),
          ListTile(
              title: Text("STICKERS"),
              leading: Icon(Icons.close),
              onTap: () {
                Navigator.of(context).pop();
              }),
          ListTile(
              title: Text("MERCHANDISE"),
              leading: Icon(Icons.close),
              onTap: () {
                Navigator.of(context).pop();
              }),
          ListTile(
              title: Text("NEWS & VIDEOS"),
              leading: Icon(Icons.close),
              onTap: () {
                Navigator.of(context).pop();
              }),
          ListTile(
              title: Text("SIGN IN"),
              leading: Icon(Icons.close),
              onTap: () {
                Navigator.of(context).pop();
              })
        ],
      )),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
                expandedHeight: 150.0,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text(
                    "\nHAMILTON TODAY",
                    style: TextStyle(fontSize: 25, fontStyle: FontStyle.italic),
                  ),
                ),
                backgroundColor: Colors.orange[100],
                elevation: 0,
                actions: <Widget>[
                  RaisedButton(
                    onPressed: () {},
                    color: Colors.transparent,
                    elevation: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "Sign In",
                        style: TextStyle(fontSize: 15.0, color: Colors.black),
                      ),
                    ),
                  ),
                ]),
          ];
        },
        body: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      MaterialButton(
                        child: Column(
                          children: <Widget>[
                            Icon(Icons.account_balance),
                            Text("LOTTERY"),
                          ],
                        ),
                        onPressed: (){},
                        
                      ),
                      MaterialButton(
                        child: Column(
                          children: <Widget>[
                            Icon(Icons.question_answer),
                            Text("TRIVIA"),
                          ],
                        ),
                        onPressed: (){},
                        
                      ),
                      MaterialButton(
                        child: Column(
                          children: <Widget>[
                            Icon(Icons.mic_none),
                            Text("KARAOKE"),
                          ],
                        ),
                        onPressed: (){},
                        
                      ),
                      MaterialButton(
                        child: Column(
                          children: <Widget>[
                            Icon(Icons.photo_camera),
                            Text("#HAMCAM"),
                          ],
                        ),
                        onPressed: (){},
                        
                      ),
                      MaterialButton(
                        child: Column(
                          children: <Widget>[
                            Icon(Icons.star),
                            Text("STICKERS"),
                          ],
                        ),
                        onPressed: (){},
                        
                      ),
                      MaterialButton(
                        child: Column(
                          children: <Widget>[
                            Icon(Icons.shopping_basket),
                            Text("MERCH"),
                          ],
                        ),
                        onPressed: (){},
                        
                      ),
                      MaterialButton(
                        child: Column(
                          children: <Widget>[
                            Icon(Icons.announcement),
                            Text("NEWS"),
                          ],
                        ),
                        onPressed: (){},
                        
                      ),
                    ],
                  ),
                ),
                
              ],
            
            ),
            decoration: BoxDecoration(
                gradient: RadialGradient(
                    colors: [Colors.white, Colors.orange[300]],
                    focalRadius: 400,
                    radius: 2.5)),
          
        ),
      ),
    );
  }
}
