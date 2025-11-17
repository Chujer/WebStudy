import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(
                    color: Colors.amber
                  ),
                  hintText: 'Enter your Email',
                  hintStyle: TextStyle(
                    color: Colors.brown
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(
                      width: 2, color: Colors.red
                    ),

                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(
                        width: 2, color: Colors.blue
                    ),
                  ),
                  icon: Icon(Icons.settings),
                  prefixIcon: Icon(Icons.phone),
                  suffixIcon: Icon(Icons.star),
                ),
                keyboardType: TextInputType.emailAddress, // 모바일 키보드 나오는 형태
                textInputAction: TextInputAction.search,  //모바일에서 키보드 우측하단의 검색마크
                obscureText: true,                        //화면에 표시안되게
                controller: _emailController,
              ),
              ElevatedButton(
                  onPressed: (){
                    print(_emailController.text);
                  },
                  child: Text('Click')),
            ],
          ),
        ),
      ),
    );
  }
}

