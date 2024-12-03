import 'package:flutter/material.dart';
import 'login_page.dart';
import 'register_page.dart';
import 'welcome_page.dart';
import 'home_page.dart'; // Import your home page here

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome App',
      initialRoute: '/welcome',
      routes: {
        '/welcome': (context) => const WelcomePage(),
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/home': (context) => const HomePage(), // Define the home route here
      },
    );
  }
}
