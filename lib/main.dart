import 'package:flutter/material.dart';
import 'package:news_app/screens/detail.dart';
import 'package:news_app/screens/home.dart';
import 'package:news_app/screens/profile.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Profile(),
    );
  }
}
