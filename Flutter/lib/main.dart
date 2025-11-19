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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}


class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple App'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: ListView.separated(
        //physics: BouncingScrollPhysics(), // physics : 스크롤스타일 / ios 스타일 스크롤
        //physics: NeverScrollableScrollPhysics(), // 스크롤 금지
        //physics: ClampingScrollPhysics(), // 스크롤시 바운딩 금지
        itemCount: 6,
        itemBuilder: (context, position){
          return ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.amber,
            child: Text(position.toString()),
          ),
            title: Text('Item $position'),
            subtitle: Text('Item$position description'),
          );
        },
        separatorBuilder: (context, position){
          return Card(
            color: Colors.grey,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Separator $position',
                style: TextStyle(color: Colors.white),
              ),
            ),
          );
        },
      ),
    );
  }
}

