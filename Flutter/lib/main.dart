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
      theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue)
      ),
      home: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.primary,
        appBar: AppBar(
          title: Text('Login Screen', style: TextStyle(color: Colors.white),),
          backgroundColor: Theme
              .of(context)
              .colorScheme
              .primary,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 40,),
                Icon(
                  Icons.account_circle,
                  size: 100,
                  color: Colors.white,
                ),
                SizedBox(height: 30,),
                Text('Welcome Back!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white

                  )
                ),
                SizedBox(height: 30,),
                TextField(
                  decoration: InputDecoration(
                      labelText: 'Email',
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)
                      ),
                      prefixIcon: Icon(Icons.email)
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Passward',
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)
                    ),
                    prefixIcon: Icon(Icons.lock),
                  ),
                ),
                SizedBox(height: 24,),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    textStyle: TextStyle(fontSize: 18),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)
                    )
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 16
                    ),
                    child: Text('Login',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 16,),
                TextButton(onPressed: () {}, child: Text('Foget Password?',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight:
                      FontWeight.bold),
                )
                ),
                SizedBox(height: 16,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Don\'t have an acount?',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14
                    ),),
                    TextButton(onPressed: (){},
                        child: Text('Sign Up',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Colors.white),
                        )
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

