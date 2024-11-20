import 'package:flutter/material.dart';
import 'package:uts_mobile/component/bottom_bar_component.dart';
import 'package:uts_mobile/views/login_screen.dart';
import 'package:uts_mobile/views/register_screen.dart';

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
        '/register': (context) => const Registerscreen(),
        '/dashboard': (context) => const BottomBarComponent(),
      },
    );
  }
}