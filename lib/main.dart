import 'package:flutter/material.dart';
import 'package:news_app/view/HomeScreen.dart';
import 'package:news_app/view/widgets/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool showsplash = true;
  LoadHome() {
    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        showsplash = false;
      });
    });
  }

  @override
  void initState() {
    LoadHome();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'News Adda',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: showsplash ? SplashScreen() : HomeScreen(),
    );
  }
}
