import 'package:flutter/material.dart';
import 'package:uts_mobile/component/bottom_bar_component.dart';
import 'package:uts_mobile/views/detail_kost_screen.dart';
import 'package:uts_mobile/views/forgot_password_screen.dart';
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
        '/dashboard': (context) => BottomBarComponent(
          username: ModalRoute.of(context)!.settings.arguments as String,
        ),
        '/forgot-password': (context) => const ForgotPasswordscreen(),
        '/detail-kost': (context) => const DetailKostScreen(),
      },
    );
  }
}