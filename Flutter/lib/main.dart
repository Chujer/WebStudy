import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin{
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this); //length : 탭의 개수, vsync : 해당 SingleTickerProviderStateMixin을 상속한 객체
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TabBar Example',
      home: Scaffold(
        appBar: AppBar(
          title: Text('TabBar Example'),

          bottom: TabBar(
            controller: _tabController,
            tabs: <Widget>[
              Tab(icon : Icon(Icons.home), text: 'Home'),
              Tab(icon : Icon(Icons.star), text: 'Favorites'),
              Tab(icon : Icon(Icons.settings), text: 'Settings'),
            ],
          ),
        ),
        body: TabBarView(       //탭이 달라질때 바꿀 본문
          controller: _tabController,
          children: <Widget>[
            Center(child: Text('Home'),),
            Center(child: Text('Favorites'),),
            Center(child: Text('Settings'),),

          ],
        ),
      ),
    );
  }
}
