import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                activeIcon: Icon(Icons.alarm, color:Colors.blue), // 활성화 한 아이콘 표시
                label: '홈'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: '즐겨찾기'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: '설정'
            ),
          ],
          onTap: (index){
            print(index);
            setState(() {
              _currentIndex = index;
            });

          },
          currentIndex: _currentIndex,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.brown,
          unselectedItemColor: Colors.blueAccent,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: true,
          showUnselectedLabels: true,
        ),
        backgroundColor: Colors.amber ,
      ),
    );
  }
}
