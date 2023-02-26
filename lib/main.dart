import 'package:crowntium/Screens/loading_screen.dart';
import 'package:flutter/material.dart';
// import 'package:crowntium/Screens/welcome_screen.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'Models/nav_items.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Color(
        0xFF1DAE98,
      ),
      systemNavigationBarColor: Color(
        0xFF1DAE98,
      ),
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => NavItems(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'App',
        theme: ThemeData(),
        home: LoadingScreen(),
      ),
    );
  }
}
