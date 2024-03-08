import 'package:chatapp/pages/splashpage.dart';
import 'package:chatapp/theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Chat',
      debugShowCheckedModeBanner: false,
      theme: AppChatTheme.lightTheme,
      darkTheme: AppChatTheme.darkTheme,
      home: const SplashPage(),
    );
  }
}
