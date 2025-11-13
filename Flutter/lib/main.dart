import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 400,
          color: Colors.amber,
          child: Text("잔재미코딩", textDirection: TextDirection.ltr, style: TextStyle(fontSize: 24),overflow: TextOverflow.fade,),
        ),
        Container(
          child: Image(
            image: AssetImage('assets/images/camera.png'),    ///프로젝트 내부에 넣은 이미지 에셋
          ),
        ),
        Container(
          width: 400,
          color: Colors.red,
          child: Text("잔재미코딩", textDirection: TextDirection.ltr, style: TextStyle(fontFamily: 'Sunflower', fontSize: 24),   ///프로젝트 내부에 넣은 폰트 에셋
          ),
        ),
        Container(
          child: Image.network("https://www.fun-coding.org/img/newfunlogo72.png")     ///외부 인터넷에서 넣은 이미지
          ),
      ],
    );
  }
}
