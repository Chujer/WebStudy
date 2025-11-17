import 'package:flutter/material.dart';

void main() {
  runApp(MusicPlayer());
}

class MusicPlayer extends StatelessWidget {
  const MusicPlayer({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Funcoding Music Player'),
          titleTextStyle: TextStyle(color: Colors.white),
          backgroundColor: Colors.purple,
          centerTitle: true,
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.purple, Colors.purpleAccent],
            )
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/test.PNG'),
                  radius: 100,
                ),
                SizedBox(height: 20,),
                Text('Song Title',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),),
                SizedBox(height: 10,),
                Text('Artist Name', style: TextStyle(
                    fontSize: 18,
                    color: Colors.white70
                ),),
                SizedBox(height: 30,),
                Slider(value: 0.5, onChanged: (value) {},
                  activeColor: Colors.white,
                inactiveColor: Colors.grey,),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(onPressed: () {},
                        icon: Icon(Icons.fast_rewind),
                        color: Colors.white,
                        iconSize: 50,

                    ),
                    IconButton(onPressed: () {},
                        icon: Icon(Icons.play_arrow),
                      color: Colors.white,
                      iconSize: 50,
                    ),
                    IconButton(onPressed: () {},
                        icon: Icon(Icons.fast_forward),
                      color: Colors.white,
                      iconSize: 50,
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

