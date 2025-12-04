import 'package:flutter/material.dart';
import 'package:firstproject/new_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context){
                    return NewPage();
              })
              );
            },
            child: Text("Go to new page")
        ),

      ),
    );
  }
}
