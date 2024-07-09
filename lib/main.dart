import 'package:flutter/material.dart';
import 'package:aimate/pages/splash_screen.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {"/": (context) => const SplashScreen()},
      title: 'AIMate',
      theme: ThemeData(brightness: Brightness.dark),
    );
  }
}
