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
        body: Center(
          child: Stack(   ///Stack이란 : 겹칠 수 있는 위젯 컬럼과 로우는 겹치지않음
            children: [
              Container(
                width: 400,
                height: 400,
                color: Colors.yellow,
              ),
              Align(    /// 화면을 기준으로 정렬한다. 정규화된 값으로 좌측상단 (-1,-1) 중앙(0,0)
                alignment: Alignment(0, 0),
                  child:Container(
                    width: 100,
                    height: 100,
                    color: Colors.blue,
                  )
              ),
              Positioned(     /// 좌측상단을 기준으로 얼마나 멀어질지 설정하는 위젯
                top: 500,
                left: 500,
                child:Container(
                  width: 100,
                  height: 100,
                  color: Colors.green,
                )
              )
            ],
          ),
        )
      ),
    );
  }
}

