import 'package:flutter/material.dart';
import 'package:my_services/screen/home_page.dart';
import 'package:my_services/screen/login_page.dart';

void main() {
  runApp(const my_services());
}

// ignore: camel_case_types
class my_services extends StatelessWidget {
  const my_services({super.key});
  @override
  Widget build(BuildContext context) {
    bool isLogin = false;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // ignore: dead_code
      home: (isLogin) ? const HomePage() : const LogIn(),
    );
  }
}
