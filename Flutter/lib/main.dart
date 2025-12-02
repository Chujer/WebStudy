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
        appBar: AppBar(title: Text('Button Example'),),
        body: Center(
          child: Column(
            children: [
              IconButton(
                onPressed: (){
                  print('IconButton');
                },
                icon: Icon(Icons.favorite),
              ),
              ElevatedButton(
                  onPressed: (){
                print('ElevateButton');
              }, 
                  child: Text('ElevatedButton')),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            print('FloatingActionButton');
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}


// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(home: MyHomePage(),);
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   double _top = 0;
//   String _dragStatus = 'Drag the text verticall';
//
//   void _onVerticalDragStart(DragStartDetails details){
//     setState(() {
//       _dragStatus = 'Vertical drag started';
//       _top = details.globalPosition.dy;
//     });
//   }
//   void _onVerticalDragUpdate(DragUpdateDetails details){
//     setState(() {
//       _top += details.delta.dy;
//
//     });
//   }
//
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: GestureDetector(
//         onVerticalDragStart: _onVerticalDragStart,
//         onVerticalDragUpdate: _onVerticalDragUpdate,
//         child: Container(
//           child: Stack(
//             children: [
//               Positioned(
//                 top: _top,
//                 child: Text(_dragStatus),
//               )
//             ],
//           )
//         ),
//       ),
//     );
//   }
// }


// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Gesture Demo',
//       home: MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Gesture Demo'),
//       ),
//       body: GestureDetector(
//         onTap: (){
//           print('Screen tapped');
//         },
//         child: Container(
//           color: Colors.white,
//           child: Center(
//             child: Text(
//               'Tap anywhere on the screen',
//               style: TextStyle(fontSize: 24),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

