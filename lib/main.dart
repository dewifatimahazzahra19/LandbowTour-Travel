import 'package:pbllandbow/state_util.dart';
import 'package:pbllandbow/core.dart';
import 'package:flutter/material.dart';
import 'login_page.dart';
import 'register_page.dart';
import 'welcome_page.dart';
import 'home_page.dart';
import 'passport_page.dart';
import 'sewa_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context)
   {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome App',
navigatorKey: Get.navigatorKey,
      initialRoute: '/welcome',
      routes: {
        '/welcome': (context) => const WelcomePage(),
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/home': (context) =>  MyHomePage(),
        '/passport': (context) => const PassportVisaPage (),
        '/sewa':(context) =>  SewaPage(),
      },
    );
  }
}
