import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return MaterialApp(
      theme:ThemeData(primarySwatch: Colors.amber),
      title: 'Welcome to Flutter',
      home: Scaffold(

        appBar: AppBar(
            leading: Icon(Icons.star),
            title: const Text('Welcome to Flutter'),
        ),
        body: Center(child:Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Container(width: 50,height: 50,color: Colors.blue,),
          Container(margin:EdgeInsets.all(10),width: 50,height: 50,color: Colors.red,),
          Container(width: 50,height: 50,color: Colors.green,)
        ],)),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: const <Widget> [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text('Drawer Header',style: TextStyle(color:Colors.white, fontSize: 24,
                ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.message),
                title: Text('Messages'),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Profile'),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
              ),
            ],
          ),
        ),
      ),
    );


  }
}
