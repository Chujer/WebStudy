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
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent)
      ),
      home: MyHomepage(),
    );
  }
}

class MyHomepage extends StatefulWidget {
  const MyHomepage({super.key});

  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inspirational Moments',
        style: TextStyle(color: Colors.white
        ),),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Stack(
        children: [
          PageView(
            children: [
              _buildPage(
                imageUrl : 'https//source.upsplash.com/random/1',
                useName : 'Dave Lee',
                avatarUrl : 'https://https://randomuser.me/api/portraits/men/1.jpg'
              ),
              _buildPage(
                imageUrl : 'https//source.upsplash.com/random/1',
                useName : 'Jane Smith',
                avatarUrl : 'https://https://randomuser.me/api/portraits/women/1.jpg'
              ),
              _buildPage(
                imageUrl : 'https//source.upsplash.com/random/1',
                useName : 'Alex Johnson',
                avatarUrl : 'https://https://randomuser.me/api/portraits/men/2.jpg'
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildPage({
    required String imageUrl,
    required String useName,
    required String avatarUrl,
}){
    return Stack(
      children: [
        Positioned.fill(
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 20,
          left: 20,
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(avatarUrl),
              ),
              SizedBox( width: 10,),
              Text(
                useName,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(
                      offset: Offset(1, 1),
                      blurRadius: 2,
                      color: Colors.black
                    )
                  ]
                ),
              )
            ],
          )  ,
        )
      ],
    );
  }
}


