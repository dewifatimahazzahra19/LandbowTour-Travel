import 'package:flutter/material.dart';
import 'login_page.dart';
import 'register_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lanbow App',
      theme: ThemeData(primarySwatch: Colors.orange),
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginPage(),
        // '/register': (context) => RegisterPa,
      },
    );
  }
}
