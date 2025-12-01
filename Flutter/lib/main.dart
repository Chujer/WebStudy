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
  final _formKey = GlobalKey<FormState>();
  int _rating = 0;
  String _successMessage = '';
  double _sliderValue = 0.0;
  bool _agreeToTerms = false;
  String _name = '';
  String _email = '';
  String _description = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Feedback Form',
            style: TextStyle(
              color: Colors.white
            ),
          ),
          backgroundColor: Colors.deepPurple,
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: Form(
            key: _formKey,
            child: ListView(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Name',
                    hintText: 'Dave Lee',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                  onSaved: (value){
                    _name = value!;
                  },
                ),
                SizedBox(height: 16,),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    hintText: 'dreem@fun-coding.org',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your Email';
                    }
                    return null;
                  },
                  onSaved: (value){
                    _email = value!;
                  },
                ),
                SizedBox(height: 16,),
                TextFormField(
                  maxLines: 4,
                  decoration: InputDecoration(
                    labelText: 'Description',
                    hintText: 'Tell us about your experience',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your Email';
                    }
                    return null;
                  },
                  onSaved: (value){
                    _description = value!;
                  },
                ),

                SizedBox(height: 16,),
                ListTile(
                  title: Text("How satisfied are you with our cur service?",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                  ),
                  trailing: Text('$_rating', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List<Widget>.generate(5, (index) {
                    return Radio<int>(
                      value: index + 1,
                      activeColor: Colors.deepPurple,
                      groupValue: _rating,
                      onChanged: (value) {
                        setState(() {
                          _rating = value!;
                        });
                      },
                    );
                  }
                  ),
                ),
                ListTile(
                  title: Text("How satisfied are you with our customer service?",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                  ),
                ),
                  trailing: Text('${_sliderValue.toStringAsFixed(0)}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                  ),
                  ),
                ),
                Slider(
                  value: _sliderValue,
                  onChanged: (value){
                  setState(() {
                      _sliderValue = value;
                    }
                  );
                  },
                  min: 0,
                  max: 10,
                  divisions: 10,
                  label: _sliderValue.toString(),
                  activeColor: Colors.deepPurple,
                ),
                CheckboxListTile(
                  title: Text('Subscribe to our newsletter',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                    ),
                  ),
                  value: _agreeToTerms,
                  onChanged: (value){
                    setState(() {
                      _agreeToTerms = value!;
                    });
                  },
                  activeColor: Colors.deepPurple,
                ),
                ListTile(
                  title: Text("How satisfied are you with our customer service?"),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      setState(() {
                        _formKey.currentState!.save();
                        _successMessage = 'Submission Complete';
                      });
                    }
                  },
                  child: Text('Submit',
                  style: TextStyle(
                      fontSize: 16,
                    color: Colors.white
                  ),

                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    padding: EdgeInsets.symmetric(vertical: 18,horizontal: 24)
                  ),
                ),
                Padding(padding: EdgeInsets.all(12.0),
                  child: Center(
                    child: Text(_successMessage,
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 14
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


