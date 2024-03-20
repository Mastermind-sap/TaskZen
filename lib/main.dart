import 'package:flutter/material.dart';
import 'package:task_leap/pages/home/homescreen.dart';
import 'config/config.dart';
import 'pages/pages.dart';
import 'utils/utils.dart';

void main() {
  runApp(const TaskLeap());
}

class TaskLeap extends StatelessWidget {
  const TaskLeap({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      routes: {
        SplashScreen.route: (BuildContext context) => const SplashScreen(),
        HomeScreen.route:(context) => const HomeScreen(),
      },
      builder: ErrorHandler.handle,
      initialRoute: HomeScreen.route,
      debugShowCheckedModeBanner: false,
    );
  }
}
