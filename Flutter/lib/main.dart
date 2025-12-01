import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override   //모바일용
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('PageView Example'),
        ),
        body: PageView(
          controller: PageController(
            initialPage: 2,
            viewportFraction: 0.7,
          ),
          children: [
            Container(margin: EdgeInsets.all(10),
              color: Colors.red,),
            Container(margin: EdgeInsets.all(10),
              color: Colors.blue,),
            Container(margin: EdgeInsets.all(10),
              color: Colors.green,),
          ],
        ),
      ),
    );
  }
}


// class MyApp extends StatefulWidget {
//   const MyApp({super.key});
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   final _formKey = GlobalKey<FormState>();
//   int _rating = 0;
//   String _successMessage = '';
//   double _sliderValue = 0.0;
//   bool _agreeToTerms = false;
//   String _name = '';
//   String _email = '';
//   String _description = '';
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('GridView Example'),
//         ),
//         body: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: GridView.builder(
//             //scrollDirection: Axis.horizontal,
//
//             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 2,   //한줄에 몇개의 객체를 배치할 것이냐
//               crossAxisSpacing: 8.0,  // 좌우 간격
//               mainAxisSpacing: 36.0 //위아래 간격
//             ),
//             itemCount: 10,
//             itemBuilder: (context, index){
//               return Container(
//                 color: Colors.blueGrey,
//                 child: Center(
//                   child: Text('$index'),
//                 ),
//               );
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }


