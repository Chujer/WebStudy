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
        appBar: AppBar(
          title: Text('AlertDialog Sample'),
        ),
        body: Center(
          child: DialogExample(),
        ),
      ),
    );
  }
}

class DialogExample extends StatelessWidget {
  const DialogExample({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog(
          context: context,
          barrierDismissible: true,
          builder: (BuildContext context) => AlertDialog(
            title: Text('AlertDialog Title'),
            content: Text('AlertDialog description'),
            backgroundColor: Colors.grey,
            elevation: 24,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8)
            ),
            contentPadding: EdgeInsets.all(50),
            actionsPadding: EdgeInsets.all(2),
            titlePadding: EdgeInsets.all(12),
            buttonPadding: EdgeInsets.all(0),
            actions: [
              TextButton(
                  onPressed: ()=>Navigator.of(context).pop(),
                  child: Text('Cancel')
              ),
              TextButton(
                  onPressed: ()=>Navigator.of(context).pop(),
                  child: Text('OK')
              ),
            ],
          )
      ),
      child: Text('Show Dialog'),
    );
  }
}

