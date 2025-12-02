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
        appBar: AppBar(title: Text('Bottom Sheet Sample'),),
        body: BottomSheetExample(),
      ),
    );
  }
}

class BottomSheetExample extends StatelessWidget {
  const BottomSheetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: (){
          showBottomSheet(context: context, builder: (BuildContext context){
            return Container(
              color: Colors.amber,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    leading: Icon(Icons.add),
                    title: Text('추가'),
                    onTap: (){
                      Navigator.of(context).pop();
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.remove),
                    title: Text('삭제'),
                    onTap: (){
                      Navigator.of(context).pop();
                    },
                  )
                ],
              ),
            );
          });
        },
        child: Text('showModalBottomSheet')),
    );
  }
}

