import 'package:flutter/material.dart';
import 'profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sumitro Chakrabarty Profile', // Updated Name
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 193, 188, 202),
          brightness: Brightness.dark, // Enforce dark theme
        ),
        useMaterial3: true,
      ),
      home: const ProfilePage(),
    );
  }
}
