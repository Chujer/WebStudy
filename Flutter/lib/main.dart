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

  bool _checkBoxValue = true;
  String _radioValue = 'Option 1';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Form Controls Example'),
        ),
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text('$_checkBoxValue'),
              ),
              SizedBox(height: 16,),
              Text('Checkbox : '),
              Checkbox(
                value: _checkBoxValue,
                onChanged: (value)
                {
                  setState(() {
                    _checkBoxValue = value!;
                  });
                },
              ),
              SizedBox(height: 16,),
              Text('Radio Button'),
              Row(
                children: [
                  Radio(
                    value: 'Option 1',

                    groupValue: _radioValue,
                    onChanged: (value){
                      setState(() {
                        _radioValue = value.toString();
                        print('Option1:$value');
                      });
                    },
                  ),
                  Text('Option 1'),
                  Radio(
                    value: 'Option 2',
                    groupValue: _radioValue,
                    onChanged: (value) {
                        setState(() {
                          _radioValue = value.toString();
                          print('Option2:$value');
                        });
                      }
                  ),
                  Text('Option 2'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

