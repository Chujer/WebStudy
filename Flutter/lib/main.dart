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
          title: Text("Weather App", style: TextStyle(color: Colors.white)),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft, end: Alignment.bottomRight,
              colors: [Colors.blue, Colors.white]
            )
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.wb_sunny, size: 100, color: Colors.yellow),
                SizedBox(
                  height: 20,
                ),
                Text('27℃', style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold
                ),),
                SizedBox(
                  height: 30,
                ),
                Text('Sunny', style: TextStyle(
                  fontSize: 24,
                ),),
                SizedBox(
                  height: 18,
                ),
                Text('New York City, USA', style: TextStyle(
                  fontSize: 20
                ),),
                SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text("Humidity"),
                        SizedBox(height: 10,),
                        Text("50%", style: TextStyle(fontSize: 20),)
                      ],
                    ),
                    Column(
                      children: [
                        Text("Wind"),
                        SizedBox(height: 10,),
                        Text("50%", style: TextStyle(fontSize: 20),)
                      ],
                    ),
                    Column(
                      children: [
                        Text("Pressure"),
                        SizedBox(height: 10,),
                        Text("50%", style: TextStyle(fontSize: 20),)
                      ],
                    ),
                  ],
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
