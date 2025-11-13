import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("FunCoding"),
          centerTitle: true,
          backgroundColor: Colors.amberAccent,
          elevation: 10.0,
          leading: IconButton(
              icon: Icon(Icons.menu),
            tooltip: 'Menu Icon',
            onPressed: (){},
          ),
          actions: <Widget>[
          IconButton(
            icon: Icon(Icons.comment),
            onPressed: (){},
            tooltip: 'comment Icon',
            ),
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: (){},
              tooltip: 'Setting Icon',
            )
          ],
        ),
      ),
    );
  }
}
