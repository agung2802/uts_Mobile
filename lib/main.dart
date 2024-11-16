import 'package:flutter/material.dart';
import 'package:uts_mobile/views/dashboard_screen.dart';
import 'package:uts_mobile/views/login_screen.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      routes: {
        '/login': (context) => const Loginscreen(),
        '/dashboard': (context) => const DashboardScreen(),
      },
    );
  }
}