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

  final _formkey = GlobalKey<FormState>();
  String _name ='';
  String _email = '';
  String _password = '';
  String _erroMessage = '';

  void _submitForm(){
    if(_formkey.currentState!.validate()){
      _formkey.currentState!.save();
      print('$_name, $_email, $_password');
    }else{
      setState(() {
        _erroMessage='pleas fill in all fields';
      });
      }
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Form Example'),
        ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Name'
                ),
                validator: (value){
                  if(value == null || value.isEmpty)
                  {
                    return 'Please enter your name';
                  }
                  return null;
                },
                onSaved: (value){
                  _name = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Email'
                ),
                validator: (value){
                  if(value == null || value.isEmpty)
                  {
                    return 'Please enter your Email';
                  }
                  return null;
                },
                onSaved: (value){
                  _email = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  errorStyle: TextStyle(
                    color: Colors.blue,
                    fontSize: 10
                  ),
                  labelText: 'Password'
                ),
                validator: (value){
                  if(value == null || value.isEmpty)
                  {
                    return 'Please enter your Password';
                  }
                  return null;
                },
                onSaved: (value){
                  _password = value!;
                },
              ),
              ElevatedButton(
                  onPressed: _submitForm,
                  child: Text('Submit')
              ),
              Text(_erroMessage, style: TextStyle(color: Colors.red),)
            ],
          ),
        ),
      ),
      ),
    );
  }
}

