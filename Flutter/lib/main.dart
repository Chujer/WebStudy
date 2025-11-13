import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hello Flutter",
              style: TextStyle(
                color: Colors.amber,
                fontSize: 30,
                fontStyle: FontStyle.italic,
                backgroundColor: Colors.blue,
                fontWeight: FontWeight.bold,
                letterSpacing: 5,   ///자간
                wordSpacing: 20, /// 띄어쓰기 공백크기
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.wavy,
                decorationColor: Colors.red,

              ),
            ),
            Text("data")
          ],
        ),
      ),
    );
  }
}


