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
  int _currentPage = 0;
  final PageController _controller = PageController(viewportFraction: 0.9);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller.addListener((){
      setState(() {
        _currentPage = _controller.page!.round();
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inspirational Moments',
          style: TextStyle(color: Colors.white
          ),),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Theme.of(context).colorScheme.primary,
                Theme.of(context).colorScheme.primaryContainer,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight
            )
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Theme.of(context).colorScheme.primary,
              Theme.of(context).colorScheme.primaryContainer,
            ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight
          )
        ),
        child: Stack(
          children: [
            PageView(
              controller: _controller,
              children: [
                _buildPage(
                    imageUrl: 'assets/images/camera.png',
                    useName: 'Dave Lee',
                    avatarUrl: 'https://https://randomuser.me/api/portraits/men/1.jpg'
                ),
                _buildPage(
                    imageUrl: 'assets/images/LodingScreen.png',
                    useName: 'Jane Smith',
                    avatarUrl: 'https://https://randomuser.me/api/portraits/women/1.jpg'
                ),
                _buildPage(
                    imageUrl: 'assets/images/test.png',
                    useName: 'Alex Johnson',
                    avatarUrl: 'https://https://randomuser.me/api/portraits/men/2.jpg'
                ),
              ],
            ),
            Positioned(
                bottom: 20,
                left: 0,
                right: 0,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:
                    List.generate(3, (index) {
                      return Container(
                        width: 8,
                        height: 8,
                        margin: EdgeInsets.symmetric(horizontal: 2),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _currentPage == index ?
                          Theme.of(context).colorScheme.primary :
                          Theme.of(context).colorScheme.primaryContainer
                        ),
                      );
                    })
                ))
          ],
        ),
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
          child:ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
            imageUrl,
            fit: BoxFit.cover,
          ),
        )
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


