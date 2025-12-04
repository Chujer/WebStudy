import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("profile"),
      ),
      body: Center(

        child: ElevatedButton(
            onPressed: (){
              Navigator.pop(context);
            },
            child: Text("Go to Home")
        )

      ),
    );
  }
}
