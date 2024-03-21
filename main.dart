import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter List Tile Example'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Image.network('https://img.lovepik.com/free-png/20210927/lovepik-book-cartoon-illustration-png-image_401539554_wh1200.png'), // Replace with your image URL
            title: Text('Judul'),
            subtitle: Text('ini Subjudul'),
            trailing: PopupMenuButton(
              itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem(
                    child: Text('Option 1'),
                  ),
                  PopupMenuItem(
                    child: Text('Option 2'),
                  ),
                ];
              },
            ),
          ),
          // ... add more ListTiles if needed
        ],
      ),
    );
  }
}