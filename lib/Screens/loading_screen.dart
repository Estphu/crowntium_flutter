import 'package:flutter/material.dart';

class LoadingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1DAE98),
      body: Container(
        // width: double.infinity,
        // decoration: BoxDecoration(
        //   image: DecorationImage(
        //     image: AssetImage(''),
        //     fit: BoxFit.cover,
        //   ),
        // ),
        child: Center(
          child: Image.asset(
                'images/logo.png',
                height: 250.0,
                width: 250.0,
              ),
        ),
      ),
    );
  }
}
