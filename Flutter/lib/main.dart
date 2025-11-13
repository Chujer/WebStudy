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
        Row(
          textDirection: TextDirection.ltr,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(color: Colors.red, width: 50,height: 50),
            Container(color: Colors.blue, width: 50,height: 50),
            Container(color: Colors.yellow, width: 50,height: 50),
          ],
        ),
        Row(
          textDirection: TextDirection.ltr,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(color: Colors.red, width: 50,height: 50),
            Container(color: Colors.blue, width: 50,height: 50),
            Container(color: Colors.yellow, width: 50,height: 50),
          ],
        ),
        Row(
          textDirection: TextDirection.ltr,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(color: Colors.red, width: 50,height: 50),
            Container(color: Colors.blue, width: 50,height: 50),
            Container(color: Colors.yellow, width: 50,height: 50),
          ],
        ),
        Row(
          textDirection: TextDirection.ltr,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(color: Colors.red, width: 50,height: 50),
            Container(color: Colors.blue, width: 50,height: 50),
            Container(color: Colors.yellow, width: 50,height: 50),
          ],
        ),
        Row(
          textDirection: TextDirection.ltr,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(color: Colors.red, width: 50,height: 50),
            Container(color: Colors.blue, width: 50,height: 50),
            Container(color: Colors.yellow, width: 50,height: 50),
          ],
        ),
        Row(
          textDirection: TextDirection.ltr,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(color: Colors.red, width: 50,height: 50),
            Container(color: Colors.blue, width: 50,height: 50),
            Container(color: Colors.yellow, width: 50,height: 50),
          ],
        ),
        Row(
          textDirection: TextDirection.ltr,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(color: Colors.red, width: 50,height: 50),
            Container(color: Colors.blue, width: 50,height: 50),
            Container(color: Colors.yellow, width: 50,height: 50),
          ],
        ),
        Row(
          textDirection: TextDirection.ltr,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(color: Colors.red, width: 50,height: 50),
            Container(color: Colors.blue, width: 50,height: 50),
            Container(color: Colors.yellow, width: 50,height: 50),
          ],
        ),
        Row(
          textDirection: TextDirection.ltr,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(color: Colors.red, width: 50,height: 50),
            Container(color: Colors.blue, width: 50,height: 50),
            Container(color: Colors.yellow, width: 50,height: 50),
          ],
        ),
        Row(
          textDirection: TextDirection.ltr,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(color: Colors.red, width: 50,height: 50),
            Container(color: Colors.blue, width: 50,height: 50),
            Container(color: Colors.yellow, width: 50,height: 50),
          ],
        ),

      ],
    );
  }
}



//TODO: 2025.11.11 : Row
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       textDirection: TextDirection.ltr,
//       children: [
//         Container(
//           color:Colors.deepOrange,
//           width: 50,
//           height: 50,
//           margin: const EdgeInsets.all(10),
//         ),
//         Container(
//           color:Colors.blueAccent,
//           width: 50,
//           height: 50,
//           margin: const EdgeInsets.all(10),
//         ),
//       ],
//     );
//   }
// }


//TODO : 2025.11.11 Container와 Border
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.all(10),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.all(Radius.circular(10)),
//         color: Colors.blueAccent,
//         border: Border.all(
//           color:Colors.black,
//           width: 5,
//         )
//       ),
//       child: Center(
//         child : Text("Hello world", textDirection: TextDirection.ltr,)
//         //child: Icon(Icons.star, textDirection: TextDirection.ltr,)
//       ),
//     );
//   }
// }
