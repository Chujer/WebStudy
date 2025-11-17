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
      home: MusicPlayerScreen(),
    );
  }
}

class MusicPlayerScreen extends StatelessWidget {
  const MusicPlayerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Funcoding Music Player'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child:
            Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage('assets/images/test.PNG'),
                      fit: BoxFit.cover
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Text('Song Title',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),),
                SizedBox(height: 10,),
                Text('Artist Name', style: TextStyle(
                  fontSize: 18,
                  fontStyle: FontStyle.italic
                ),),
              ],
            ),
          ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: Column(
              children: [
                Slider(value: 0.5, onChanged: (value){})
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(onPressed: (){},
                  icon: Icon(Icons.skip_previous)
              ),
              IconButton(onPressed: (){},
                  icon: Icon(Icons.play_arrow)
              ),
              IconButton(onPressed: (){},
                  icon: Icon(Icons.skip_next)
              ),
            ],
          )
        ],
      ),
    );
  }
}

