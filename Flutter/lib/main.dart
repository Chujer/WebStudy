import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title : Text('FunCoding'),
        ),    /// 화면의 상단에 있는 앱 바
        body: const Center(
          child: TextField(
            decoration:InputDecoration(labelText: "입력해보세요"),
          ),
        ),    /// 화면의 기본 내용, 일반적으로 위젯의 목록
        floatingActionButton: FloatingActionButton(
          elevation: 10.0,
          child: Icon(Icons.add),
          onPressed: (){
          },
        ),      /// 인터페이스 위에 떠있는 부가 버튼
        drawer: Drawer(
          child: ListView(
            children: [
              ListTile(title: Text('Item 1'),),
              ListTile(title: Text('Item 2'),)
            ],
          ),
        ),      /// Scaffold 위젯의 사이드 메뉴
        persistentFooterButtons: [
          Icon(Icons.settings),
          SizedBox(width: 5,),
          Icon(Icons.exit_to_app),
          SizedBox(width: 10,),
        ],      /// 화면 하단에 표시되는 버튼의 행
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          fixedColor: Colors.green,
          items: [
            BottomNavigationBarItem(
                label: "Home",
                icon: Icon(Icons.home)
            ),
            BottomNavigationBarItem(
                label: "Search",
                icon: Icon(Icons.search)
            ),
            BottomNavigationBarItem(
                label: "Profile",
                icon: Icon(Icons.account_circle)
            ),
          ],
          onTap: (int indexOfItem){},
        ),      /// 화면 하단에 표시되는 네비게이션 바
        backgroundColor: Colors.amberAccent,      /// 스캔폴드의 배경색
        resizeToAvoidBottomInset: false,      /// 스크린 키보드를 피하기 위해 body의 크기를 자동으로 조절할지 여부를 설정(디폴트 true)
      ),

    );
  }
}
