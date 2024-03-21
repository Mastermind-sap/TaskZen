import 'package:flutter/material.dart';
import 'package:task_leap/pages/pages.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ElevatedButton(
          child: Text("Splash"),
          onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => SplashScreen(),))),
    );
  }
}
