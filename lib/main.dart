import 'package:flutter/material.dart';
import 'web_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Imran Hasan Ifty Profile',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 193, 188, 202),
        ),
        useMaterial3: true,
      ),
      home: const ProfilePage(),
    );
  }
}
